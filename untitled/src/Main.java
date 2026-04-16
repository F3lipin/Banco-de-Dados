public class Main {
    public static void main(String[] args) {

        Pagamento pague1 = new cartaoCredito();
        Pagamento pague2 = new pix();

        pague1.pagar(150.0);
        pague2.pagar(75.5);
    }
}