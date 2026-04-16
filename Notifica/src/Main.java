public class Main {
    public static void main(String[] args) {

        Notificacao email = new Email();
        Notificacao sms = new SMS();

        email.enviarMensagem("Olá, você recebeu um email!");
        sms.enviarMensagem("Olá, você recebeu um SMS!");
    }
}