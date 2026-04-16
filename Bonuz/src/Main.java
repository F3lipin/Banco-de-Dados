//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
       Bonus bonus1 = new Gerente();
       Bonus bonus2 = new Vendedor();

       bonus1.calcularBonus( 3100);
       bonus2.calcularBonus( 1200);
    }
}