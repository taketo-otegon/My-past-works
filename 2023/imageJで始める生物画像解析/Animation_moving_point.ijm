//***初期値***
sizenum = 10;
int = 255;
frames = 50;
w = 200;
h = 50;
x_position = sizenum;
y_position = (h/2) - (sizenum/2);

//色の指定

setForegroundColor(int,int,int);
setBackgroundColor(0,0,0);

//移動速度をユーザーに聞く
speed = getNumber("Speed [pix/frame]?", 10);

//スタックの用意
stackname = "dotanimation" + speed;
newImage(stackname,"8-bit Black",w,h,frames);

//スタックのフレームに輝点を描くループ

for (i=0;i<frames;i++){
	setSlice(i+1);
	x_position += speed;
	if((x_position>(w-sizenum)) || (x_position <0)){
		speed*=-1;
		x_position += speed*2;
		
	}
	makeOval(x_position,y_position,sizenum,sizenum);
	run("Fill","slice");
}
run("Select None");
