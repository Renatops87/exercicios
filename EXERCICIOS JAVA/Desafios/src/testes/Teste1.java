package testes;

public class Teste1 {
	
	public void firstDuplicate(int[] a) {
		  int b[] = new int[a.length];
		  int v;
		  for(int i = 0; i < a.length; i++){
		    b[i] = a[i];
		  }  
		  
		  for(int i = 0; i < a.length; i++){
		    for(int j = i + 1; j < b.length; j++){
		      if (a[i] == b[j]){
		        v =  a[i];
		      } else {
		    	v = -1;
		      }
		    }
		  } 
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	}

}
