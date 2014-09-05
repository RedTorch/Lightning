int inum = 0;
void setup()
{
    size(300,300);
}
void draw()
{
	background(0,0,0,200);
	noFill();
	stroke(150);
	int vari = 30;
	int mindis = 140 - vari;
	int rovari = 140;
	for(int i = 0; i < inum; i++)
        quad(150+(int)(Math.random()*rovari),(150-mindis)-(int)(Math.random()*vari),mindis+(int)(Math.random()*vari)+150,150+(int)(Math.random()*rovari),150-(int)(Math.random()*rovari),mindis+(int)(Math.random()*vari)+150,(150-mindis)-(int)(Math.random()*vari),150-(int)(Math.random()*rovari));
}
void mousePressed()
{
    inum = inum + 5;
}