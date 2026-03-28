<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project reverses bits ie if you input 11011111 it will out put the reverse which is 11111011, the main 3 parts are:

Setting pins(bidirectional pins(converted using external pull up/down circuit)):
used to set the number of bits you are intending to input(1 bit not accepted and you can only use 2,3,4,5,6,7,8 bits setting),
the uio_in[0] is equal to 0 or 1 bit,the uio_in[1] is equal to 0 or 2 bit,the uio_in[2] is equal to 0 or 4 bit,the uio_in[3] is equal to 0 or 8 bit.

Thus if you want to set to 7 bits input you must set the pins to the following:

 uio_in[0]=1 &  uio_in[1] =1 &  uio_in[2] =1 &  uio_in[3] =0


And if you want to set to 8 bits input you must set the pins to the following:

 uio_in[0]=0 &  uio_in[1] =0 &  uio_in[2] =0 &  uio_in[3] =1


Pins in:
used to input the 11011111 bits, so to input the 8 bits mentioned you will set the following:
ui_in[0] : 1
ui_in[1] : 1
ui_in[2] : 0
ui_in[3] : 1
ui_in[4] : 1
ui_in[5] : 1
ui_in[6] : 1
ui_in[7] : 1


Pins out:
Using the above input the reversed out put pins will be the following:

uo_out[0] : 1
uo_out[1] : 1
uo_out[2] : 1
uo_out[3] : 1
uo_out[4] : 1
uo_out[5] : 0
uo_out[6] : 1
uo_out[7] : 1


## How to test

step one:
connect a pull up/down to the bidirectional pins to provide the input settings

step two:
input the bits you want reversed using the input pins

step three:
read output reversed bits from the out put pins.

## External hardware

a pull up/down external cicuit must be connected to the bidirectional pins to provide the setting input and avoid floating values.


List external hardware used in your project (e.g. PMOD, LED display, etc), if any
