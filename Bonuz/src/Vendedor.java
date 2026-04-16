public class Vendedor implements Bonus{
    @Override
    public void calcularBonus(double salario){
        System.out.println("Salário com bônus: " + salario * 1.15);
    }
}
