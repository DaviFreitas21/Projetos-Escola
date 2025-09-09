package prjFacaEnquanto2;
import java.util.Scanner;
public class programaFaixaEtaria2 {
	public static void main(String[] args) {
		Scanner ler = new Scanner(System.in);
		double i=0, c, f1=0, f2=0, f3=0, f4=0, f5=0, idade;
		do {
			System.out.println("Insira a idade:");
			idade = ler.nextInt();
			if (idade<16) {
				f1 = f1+1;
			}
			else if (idade<31) {
				f2=f2+1;
			}
			else if (idade<46) {
				f3=f3+1;
			}
			else if (idade<61) {
				f4=f4+1;
			}
			else {
				f5=f5+1;
			}
			i++;
			System.out.println("Deseja continuar? 1- Sim 2- Não");
			c = ler.nextInt();
			}
		while (c==1);
		System.out.println("1ª faixa: "+f1-100/i+"%");
		System.out.println("2ª faixa: "+f2-100/i+"%");
		System.out.println("3ª faixa: "+f3-100/i+"%");
		System.out.println("4ª faixa: "+f4-100/i+"%");
		System.out.println("5ª faixa: "+f5-100/i+"%");
		System.out.println(f1+f2+f3+f4+f5);
		ler.close();
	}

}
