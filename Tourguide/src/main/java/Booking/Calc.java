package Booking;

public class Calc {
	
	public static int Accommodation(String ANo,String CNo,String INo,String DNo,String TNo) {
		
		int A = Integer.parseInt(ANo);
		int C = Integer.parseInt(CNo);
		int I = Integer.parseInt(INo);
		int D = Integer.parseInt(DNo);
		int T = Integer.parseInt(TNo);
		int Total=0;
		int cash=0;
		
		Total = A + C + I;
		if(Total<=12 && A!=1 && C!=1 && I!=1) {
			if((Total % 2)==1) {
				if(T==1 && ((Total-3) / 2)==D) {
					cash=(T*40000) + (D*35000);
				}
				else 
					cash=-1;
			}
			else {
				if((Total / 2)==D && T==0 ) {
					cash=(D*35000);
				}
				else
					cash=-1;
			}
		}
		
		else
			cash=-1;
		
		
		return cash ;
		
	}

   public static int Language(String lang) {
	   
	   int cash = 0;
	   
	   if(lang.equals("Sinhala")) {
		   cash=1000;
	   }else if(lang.equals("English")) {
		   cash=1200;
	   }else if(lang.equals("Tamil")) {
		   cash=1200;
	   }else if(lang.equals("Chinese")) {
		   cash=2000;
	   }
	   
	return cash; 
   }
   
}