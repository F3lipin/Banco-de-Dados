public class Email implements Notificacao {

    @Override
    public void enviarMensagem(String msg) {
        System.out.println("Enviando email: " + msg);
    }
}