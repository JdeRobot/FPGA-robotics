# Reads a VHDL file, finds a VHDL ROM and converts it to verilog
# not all the file, just the always block, then you have to copy and paste it
# in your verilog file.

import os
import math

# exec(open("./vhdlrom2vrl.py").read())


def vhdlrom2vrl  (vhdlfilename,
                  constant_name,
                  addr_name = "addr",
                  outfilename = "rom_from_vhdl.v",
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
    addr_name     : name of the address of the ROM
    outfilename   : name of the output file
    dest_path     : path of the output file to be created
    blocking      : True: creates blocking assignments:        =
                    False: creates non-blocking assignments:  <=
    clk           : False: combinational sensitivity list: always@(*)
                  : True: creates:                         always@(posedge clk)
    """




    with open(vhdlfilename) as vhdlfile:
        filename = os.path.split(vhdlfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vrlfilename = dest_path + outfilename
        vrlfile = open(vrlfilename, 'w')
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
            assign = ': ' + constant_name + ' = '
            if clk == True:
                print ("Not recommended: blocking assignmets (=) with clock")
                vrlfile.write ("//  Not recommended: blocking assignmets (=) with clock\n")
        else:
            vrlfile.write('//  Memory with non-blocking assignments (<=)\n')
            assign = ': ' + constant_name + ' <= '
            if clk == False:
                print ("Not recommended: non-blocking assignmets (<=) in combinational logic\n")

                vrlfile.write ("//  Not recommended:  non-blocking assignmets (<=) in combinational logic\n")


        if clk==True:
            vrlfile.write('//  Memory with clock\n\n')
            vrlfile.write ("  always @(posedge clk)\n")
            # empty text, so no comment
            clkcmt =''
        else:
            vrlfile.write('//  Memory without clock\n\n')
            vrlfile.write ("  always @(*)\n")
            # commented clk sentence
            clkcmt ='//'
        vrlfile.write ("  begin\n")
        vrlfile.write ("    case(" + addr_name + ")\n")

        rom_i = 0 # index of the ROM
        constant_found = False # constant has not been yet found in VHDL
        for line in vhdlfile:
            # look for the VHDL comments: --, and separete into code and comment
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
                # regvalue is the value inside x"...."
                regvalue = code.partition('x"')[2].partition('"')[0]
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
            # how manyhex digits has the address
            hexdig_addr = math.ceil(numbits_addr/4)
            for reg_i, comment_i in zip(reglines, commentlines):
                if reg_i: # if not empty, could be just comments
                    vrlfile.write("      " + str(numbits_addr))
                    vrlfile.write("'h"+format(rom_i,'X'))
                    vrlfile.write(assign + "16'h" +reg_i+";\n")
                    rom_i += 1
                    last_reg = reg_i # for the default condition
                if comment_i:
                    vrlfile.write("            ")
                    vrlfile.write("//" + comment_i)
            if rom_len < pow(2,numbits_addr): # include default assignment
                vrlfile.write("      default")
                vrlfile.write(assign + "16'h" +last_reg+";\n")

            vrlfile.write ("    endcase\n")
            vrlfile.write ("  end\n")
    
        vrlfile.close()
            

