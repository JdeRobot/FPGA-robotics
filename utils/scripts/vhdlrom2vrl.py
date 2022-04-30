# Reads a VHDL file, finds a VHDL ROM and converts it to verilog
# not all the file, just the always block, then you have to copy and paste it
# in your verilog file.

import os
import math

# exec(open("./vhdlrom2vrl.py").read())


def module_header (vrlfile, clk, rom_len, rom_width, data_name, addr_name, modulename):

    if clk==True:
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='//'
 
    vrlfile.write('\n')
    vrlfile.write('//--- Ports ---------------------------------------------\n')
    vrlfile.write('// Inputs   ---------------------------------------------\n')
    vrlfile.write('//   ' + clkcmt + ' clk  :  clock signal\n')
    vrlfile.write('//    addr :  memory address\n')
    vrlfile.write('// Outputs  ---------------------------------------------\n')
    vrlfile.write('//    dout :  memory data out ')
    if clk==True:
        vrlfile.write(' (a clock cycle later)\n')
    else:
        vrlfile.write(' (no clock: in the same clock cycle)\n')
    vrlfile.write('\n\n')
    vrlfile.write('\n\n')
    vrlfile.write('module ' + modulename + '\n')
    vrlfile.write('  (\n')
    vrlfile.write('     ' + clkcmt + 'input     clk,   // clock\n')
    numbits_addr = math.ceil(math.log(rom_len,2))
    vrlfile.write('     input      [' + str(numbits_addr) + '-1:0] '+addr_name+',')
    vrlfile.write('  //' + str(rom_len) + ' memory positions\n')
    if clk==True:
        vrlfile.write('     output reg  [' + str(rom_width) + '-1:0] '+data_name)
    else:
        vrlfile.write('     output reg  [' + str(rom_width) + '-1:0] '+data_name)
    vrlfile.write('  // memory data width\n')
    vrlfile.write('  );\n')
    vrlfile.write('\n\n')






def vhdlrom2vrl  (vhdlfilename,
                  constant_name,
                  data_name = "",
                  gen_module = True,
                  addr_name = "addr",
                  outfilename = "",
                  dest_path = './',
                  blocking = True,
                  clk = False):
    """
    Takes a VHDL constant ROM in the format:
      constant ROM : typeROM := (
        x"12F0",  -- coments
        ....
        -- other comments are allowed
        x"F150"
      );
        There can be other VHDL statements, but it will only look for this
        It has to be in hexadecimal
        There cannot be more than one element in each line

    vhdlfilename  : name of the VHDL file name
    constant_name : name of the constant in the file to make the conversion
    data_name     : name of the data of the ROM, if left empty it would take
                    the name of the constant
    addr_name     : name of the address of the ROM
    outfilename   : name of the output file
    dest_path     : path of the output file to be created
    blocking      : True: creates blocking assignments:        = (non clock)
                    False: creates non-blocking assignments:  <= (with clock)
    clk           : False: combinational sensitivity list: always@(*)
                  : True: creates:                         always@(posedge clk)
    gen_module    : True: generates a verilog module
                  : False: only generates the verilog constant 
    """




    with open(vhdlfilename) as vhdlfile:
        filename = os.path.split(vhdlfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        if not outfilename:
            outfilename = basefilename + '.v'
        vrlfilename = dest_path + outfilename
        vrlfile = open(vrlfilename, 'w')
        if not data_name:
            data_name = constant_name

        # write the header

        vrlfile.write('//---- Felipe Machado -------------------------------\n')
        vrlfile.write('//---- Area de Tecnologia Electronica ---------------\n')
        vrlfile.write('//---- Universidad Rey Juan Carlos ------------------\n')
        vrlfile.write('//---- https://github.com/felipe-m ------------------\n')
        vrlfile.write('//---------------------------------------------------\n')
        vrlfile.write('//---- Autcmatically generated verilog ROM block')
        vrlfile.write('from a VHDL file----\n')
        vrlfile.write('//  Original VHDL file name: ' + filename + '\n')
        vrlfile.write('//  Constant VHDL name: ' + constant_name + '\n')


        if blocking==True:
            vrlfile.write('//  Memory with blocking assignments (=)\n')
            # empty text, so no comment
            assign = ': ' + data_name + ' = '
            if clk == True:
                print ("Not recommended: blocking assignmets (=) with clock")
                vrlfile.write ("//  Not recommended: blocking assignmets (=) with clock\n")
        else:
            vrlfile.write('//  Memory with non-blocking assignments (<=)\n')
            assign = ': ' + data_name + ' <= '
            if clk == False:
                print ("Not recommended: non-blocking assignmets (<=) in combinational logic\n")

                vrlfile.write ("//  Not recommended:  non-blocking assignmets (<=) in combinational logic\n")



        rom_i = 0 # index of the ROM
        rom_width = 0 # dont know the width yet
        constant_found = False # constant has not been yet found in VHDL
        for line in vhdlfile:
            # look for the VHDL comments: --, and separate into code and comment
            # vhdcmt are just the --
            code, vhdcmt, comment = line.partition("--")
            #remove tabs for spaces
            code = code.expandtabs(1)
            # remove all duplicate spaces
            code = " ".join(code.split())
            # look for the VHDL variable 
            if constant_found == False:
                # look for whole words
                if ((code.find("constant " + constant_name + " ") > -1) or
                    (code.find("constant " + constant_name + ":") > -1)):
                    # constant found:
                    # Now every element should be in a different line
                    # including the first element.
                    # lines with only comments, or empty lines are allowed
                    constant_found = True
                    # these are 2 lists that will have the same number elements
                    # although some elements could be empty strings
                    # we cannot write to the file directly because we need to
                    # know how many memory elements there are (rom_i)
                    reglines = []  # register values
                    commentlines = []
            else: # inside de constant
                # remove all spaces (just in case)
                code = code.replace(" ","")
                # check if it is an Hex value or binary. Find the X
                # put in upper case
                code=code.upper()
                # check if it is hexadecimal: find X
                if code.find('X') == -1: # in binary
                    regvalue = code.partition('"')[2].partition('"')[0]
                    if rom_width == 0: # not yet assigned
                        binary_rom = True
                        rom_width = len(regvalue)
                else:
                    regvalue = code.partition('X"')[2].partition('"')[0]
                    if rom_width == 0: # not yet assigned
                        binary_rom = False
                        rom_width = 4*len(regvalue) # each hex digit is 4 bits

                # if not found it would be an empty string
                reglines.append(regvalue)
                commentlines.append(comment)
                if regvalue: #not empty
                    rom_i += 1 # a new index
                
                # now look for the end of the constant: );
                if code.find(');') > -1:
                    break # end of the outer loop

             
        vhdlfile.close()
        if constant_found == True:
            rom_len = rom_i # length of the rom
            rom_i = 0
            # print the whole ROM and quit
            numbits_addr = math.ceil(math.log(rom_len,2))
            # how many hex digits has the address
            hexdig_addr = math.ceil(numbits_addr/4)

            if gen_module==True: # write the module header
                module_header (vrlfile, clk, rom_len, rom_width, data_name, addr_name, basefilename)

            if clk==True:
                vrlfile.write('//  Memory with clock\n\n')
                vrlfile.write ("  always @(posedge clk)\n")
            else:
                vrlfile.write('//  Memory without clock\n\n')
                vrlfile.write ("  always @(*)\n")
            vrlfile.write ("  begin\n")
            vrlfile.write ("    case(" + addr_name + ")\n")


            for reg_i, comment_i in zip(reglines, commentlines):
                if reg_i: # check if not empty, in case it is just comments
                    vrlfile.write("      " + str(numbits_addr))
                    vrlfile.write("'h"+format(rom_i,'X'))
                    if binary_rom == True : # binary
                        numrange = len(reg_i)
                        vrlfile.write(assign + str(numrange)+"'b" +reg_i+";\n")
                    else: # hexadecimal
                        numrange = 4*len(reg_i) # each hex digit is 4 bits
                        vrlfile.write(assign + str(numrange)+"'h" +reg_i+";\n")
                    rom_i += 1
                    last_reg = reg_i # for the default condition
                if comment_i:
                    vrlfile.write("            ")
                    vrlfile.write("//" + comment_i)
            if rom_len < pow(2,numbits_addr): # include default assignment
                vrlfile.write("      default")
                if binary_rom == True : # binary
                    vrlfile.write(assign +str(numrange)+ "'b" +last_reg+";\n")
                else:
                    vrlfile.write(assign +str(numrange)+ "'h" +last_reg+";\n")

            vrlfile.write ("    endcase\n")
            vrlfile.write ("  end\n")

            if gen_module==True: # write the end module
                vrlfile.write ("\nendmodule\n")
    
        vrlfile.close()
            
