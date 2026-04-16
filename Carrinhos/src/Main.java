//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {

        Veiculo carro = new Carro();
        Veiculo moto = new Moto();

        carro.ligar();
        carro.desligar();

        moto.ligar();
        moto.desligar();
    }
}