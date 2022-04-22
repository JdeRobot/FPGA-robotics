//------------------------------------------------------------------------------
//   Felipe Machado Sanchez
//   Area de Tecnologia Electronica
//   Universidad Rey Juan Carlos
//   https://github.com/felipe-m
//
//   centroid.v
//   - Receives the x histogram of an image. 
//     This histogram is the image divided along the x axis (columns) in 8 bins
//     and it indicates how many pixels in each bin has passed the color filter
//   - Ouputs the centroid and also the proximity, which is calculated just
//     counting pixels that have passed the filter
//
//   outputs:
//   ----------
//   centroid:
//
//    0123 4567 :bit number
//    ----------
//    0001 1000 : centered
//
//    0001 0000 : slightly to the left
//    0010 0000 : to the left
//    0100 0000 : more to the left
//    1000 0000 : to the left most
//   
//    0000 1000 : slightly to the right
//    0000 0100 : to the right
//    0000 0010 : more to the right
//    0000 0001 : to the right most
//
//   new_centroid
//    
//

module centroid
  # (parameter
      // VGA
      //c_img_cols    = 640, // 10 bits
      //c_img_rows    = 480, //  9 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_line_pxls = 10, // log2i(c_img_cols-1) + 1;
      // c_nb_img_pxls = log2i(c_img_pxls-1) + 1
      //c_nb_img_pxls =  19,  //640*480=307,200 -> 2^19=524,288
      // QQVGA
      c_img_cols    = 160, // 8 bits
      c_img_rows    = 120, //  7 bits
      c_img_pxls    = c_img_cols * c_img_rows,
      c_nb_img_pxls = $clog2(c_img_pxls), // 15 -> 160*120=19,200 -> 2^15
      // QQVGA /2
      //c_img_cols    = 80, // 7 bits
      //c_img_rows    = 60, //  6 bits
      //c_img_pxls    = c_img_cols * c_img_rows,
      //c_nb_img_pxls = $clog2(c_img_pxls), // 13,  //80*60=4800 -> 2^13

      // number of bits of the image colums and rows
      c_nb_cols     = $clog2(c_img_cols),
      c_nb_rows     = $clog2(c_img_rows),

      // inner frame size
      c_inframe_cols = 128, // 7 bits (0 to 127) taking out 32, 16 each side
      c_inframe_rows = 104, // 7 bits (0 to 107) taking out 16, 8 each side
      // total pixels in the inner frame
      c_inframe_pxls = c_inframe_cols * c_inframe_rows, // 128x104 = 13312
      // number of bits for the number of total pixels in the inner frame
      c_nb_inframe_pxls = $clog2(c_inframe_pxls), // = 14

      // histogram
      // number of bins (buckets)
      c_hist_bins = 8, // 7:0
      // number of bits needed for the histogram bins: 8 bins -> 3 bits
      c_nb_hist_bins = $clog2(c_hist_bins), // 3 bits
      // since we have 104 rows and 8 column in each bin
      // for each bin 832 (104 x 8) is the max number: 10 bits
      c_nb_hist_val = $clog2(c_inframe_rows *(c_inframe_cols/c_hist_bins)),//=10

      // centroid has 8 bits, it is decoded, so its not a number
      c_nb_centroid = 8,

      // proximity calculation, for now just 3 bits 0 to 7 (0: far, 7:close)
      c_nb_prox  = 3,

      // minimum number to consider an image detected and not being noise
      // change this value
      c_min_colorpxls = 128 //having 13312 pxls, at least 128 seems reasonable

  )
  (
    input        rst,       //reset, active high
    input        clk,       //fpga clock
    input        new_frame_proc_i, // a new frame has been processed
    // cannot have a port as an array. These are the 8 bins of the histogram
    // total number of pixels that are above the threshold
    input [c_nb_inframe_pxls-1:0] colorpxls_i,
    //input [c_nb_hist_val-1:0] histogram_o [c_hist_bins-1:0], 
    input [c_nb_hist_val-1:0] colorpxls_bin0_i,
    //input [c_nb_hist_val-1:0] colorpxls_bin1_i,
    //input [c_nb_hist_val-1:0] colorpxls_bin2_i,
    //input [c_nb_hist_val-1:0] colorpxls_bin3_i,
    //input [c_nb_hist_val-1:0] colorpxls_bin4_i,
    //input [c_nb_hist_val-1:0] colorpxls_bin5_i,
    //input [c_nb_hist_val-1:0] colorpxls_bin6_i,
    input [c_nb_hist_val-1:0] colorpxls_bin7_i,
    // total number of pixels that are above the threshold on the left side
    // bins 0 to 3
    input [c_nb_inframe_pxls-2:0] colorpxls_left_i,
    input [c_nb_inframe_pxls-2:0] colorpxls_rght_i,

    // total number of pixels that are above the threshold on the bins 0to2
    input [c_nb_inframe_pxls-2:0] colorpxls_bin012_i, // leftmost bins
    input [c_nb_inframe_pxls-2:0] colorpxls_bin567_i, // rightmost bins 5to7

    // total number of pixels that are above the threshold on the bins 0,1
    input [c_nb_inframe_pxls-2:0] colorpxls_bin01_i, // leftmost bins
    input [c_nb_inframe_pxls-2:0] colorpxls_bin67_i, // rightmost bins 6to7

    output reg [c_nb_centroid-1:0] centroid_o,
    output reg new_centroid_o,     // new centroid available, one pulse
    // proximity: how clos is the object  7: close ; 0: far
    output reg [c_nb_prox-1:0] proximity_o   //
  );

  // total color pixels divided by 2
  wire [c_nb_inframe_pxls-2:0] colorpxls_half;

  // result of the division of the total number of threshold pixels
  // initially, divided by 16, could be 8
  wire [c_nb_inframe_pxls-2:0] colorpxls_div;

  //proximity, combinational, value not valid until reaching the end of the frame
  //reg [c_nb_prox-1:0] proximity_cmb; //proximity, combinational, so 

  // temporal calculation of the centroid
  reg [c_nb_centroid-1:0] centroid_tmp;
  reg [c_nb_prox-1:0]     proximity_tmp;   // proximity

  // indicates if there are more threshold pixels on the left half of the
  // inner frame
  wire left;

  // indicates the absolute difference (positive) between the pixels on the
  // right and left
  wire [c_nb_inframe_pxls-2:0] absdif_lft_rght;

  
  assign left = (colorpxls_left_i > colorpxls_rght_i) ? 1'b1 : 1'b0;
  assign absdif_lft_rght = (left == 1'b1) ? (colorpxls_left_i - colorpxls_rght_i) :
                                            (colorpxls_rght_i - colorpxls_left_i);

  // divided by 2 -> 1 bit
  assign colorpxls_half = colorpxls_i[c_nb_inframe_pxls-1:1];

  // divided by 16 -> 4 bits
  assign colorpxls_div = {4'b0 , colorpxls_i[c_nb_inframe_pxls-1:4]};

  always @(*) 
  begin
    centroid_tmp = 0; // default assignment
    // first if the difference between the colored pixels on de left is less than
    // 16 percent (maybe it could be 8%)
    if (colorpxls_i <= c_min_colorpxls) // not enough color pixels detected
      centroid_tmp = 0;
    else if (absdif_lft_rght < colorpxls_div)  // consider in the middle
      centroid_tmp[4:3] = 2'b11; // 0001 1000
      //centroid_tmp = 8'b00011000;
    else if (left) begin // more threshold pixels on the left
      // start checking from the edges
      if (colorpxls_bin0_i >= colorpxls_half) 
        centroid_tmp[0] = 1'b1; // 1000 0000
      else if (colorpxls_bin01_i >= colorpxls_half) 
        centroid_tmp[1] = 1'b1; // 0100 0000
      else if (colorpxls_bin012_i >= colorpxls_half) 
        centroid_tmp[2] = 1'b1; // 0010 0000
      else // if (colorpxls_left_i > colorpxls_half)  -- no other option
        centroid_tmp[3] = 1'b1; // 0001 0000
    end
    else begin // more pixels on the right side
      // start checking from the edges
      if (colorpxls_bin7_i >= colorpxls_half) 
        centroid_tmp[7] = 1'b1; // 0000 0001
      else if (colorpxls_bin67_i >= colorpxls_half) 
        centroid_tmp[6] = 1'b1; // 0000 0010
      else if (colorpxls_bin567_i >= colorpxls_half) 
        centroid_tmp[5] = 1'b1; // 0000 0100
      else // if (colorpxls_rght_i > colorpxls_half)  -- no other option
        centroid_tmp[4] = 1'b1; // 0000 1000
    end
  end

  // proximity measurement (color pixel count
  // making the assumption that all pixels are together and that there is no 
  // noise. In the future we will consider this
  // only considering pixles in the inner frame

  // distance: how many pixels are detected
  // since in the inner frame there are 13312 pixels (128x104) -> 14 bits
  // (c_nb_inframe_pxls),
  // lets say that we are too close if we have 6144 or more, that is,
  //    bit 12:11 is "11"
  // Total : 13312
  // >= 8192            :~2/3 - bits: 13            ='1'   7 -> Max, very close
  // >= 6144 = 4096+2048:~1/2 - bits:   12:11       ='11'  7 -> Max, very close
  // >= 4096            :~1/3 - bits:   12:         ='1'   6
  // >= 2048            : 1/6 - bits:      11       ='1'   5
  // >= 1024            : 1/12- bits:        10     ='1'   4
  // >=  512            : 1/24- bits:          9    ='1'   3
  // >=  256            : 1/24- bits:           8   ='1'   2
  // >=  128            : 1/48- bits:            7  ='1'   1
  // >=   64            : 1/96- bits:             6 ='1'   0

  // >= 2048            : 2/3 - bits: 13           ='1'    7 -> Max, very close
  // >= 2048            : 2/3 - bits: 13           ='1'    7 -> Max, very close
  // >= 1536 = 1024+512 : 1/2 - bits:   10:9       ='11'   7 -> Max, very close
  // >= 1024            : 1/3 - bits:   10         ='1'    6
  // >=  512            : 1/6 - bits:      9       ='1'    5
  // >=  256            : 1/12- bits:        8     ='1'    4
  // >=  128            : 1/24- bits:         7    ='1'    3
  // >=   64            : 1/48- bits:          6   ='1'    2
  // >=   32            : 1/96- bits:           5  ='1'    1
  // <    32                                               0 -> Min

  always @(*)
  begin

    if (colorpxls_i[c_nb_inframe_pxls-1] == 1'b1) begin // bit 13
        proximity_tmp <= 3'd7; 
    end
    else if (colorpxls_i[c_nb_inframe_pxls-2] == 1'b1) begin // bit 12
      if (colorpxls_i[c_nb_inframe_pxls-3] == 1'b1) begin // bit 11
        proximity_tmp <= 3'd7;  // bits 12:11 too close, max proximity >=6144 : 1/2
      end
      else
        proximity_tmp <= 3'd6;  // 6 : 1/3
    end
    else if (colorpxls_i[c_nb_inframe_pxls-3] == 1'b1) begin // bit 9
      proximity_tmp <= 3'd5;  // 5: bit 11  >= 2048 - 1/6
    end
    else if (colorpxls_i[c_nb_inframe_pxls-4] == 1'b1) begin // bit 8
      proximity_tmp <= 3'd4;  // 4: bit 10  >= 1024 - 1/12
    end
    else if (colorpxls_i[c_nb_inframe_pxls-5] == 1'b1) begin // bit 7
      proximity_tmp <= 3'd3;  // 3: bit 9  >= 512 - 1/24
    end
    else if (colorpxls_i[c_nb_inframe_pxls-6] == 1'b1) begin // bit 6
      proximity_tmp <= 3'd2;  // 2: bit 8  >= 256 - 1/48
    end
    else if (colorpxls_i[c_nb_inframe_pxls-7] == 1'b1) begin // bit 5
      proximity_tmp <= 3'd1;  // 1: bit 7  >= 128 - 1/96
    end
    else
      proximity_tmp <= 3'd0;  // < 128
  end

  // register the outputs
  always @ (posedge clk, posedge rst) 
  begin
    if (rst) begin
      new_centroid_o <= 1'b0;
      centroid_o <= 0; 
      proximity_o <= 0;
    end
    else begin
      new_centroid_o <= new_frame_proc_i;
      centroid_o <= centroid_tmp; 
      proximity_o <= proximity_tmp;
    end
  end


endmodule
