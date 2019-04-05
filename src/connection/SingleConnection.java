package connection;

import java.sql.Connection;
import java.sql.DriverManager;

/*
 * Classe SingleConnection
 * Respons�vel Por Fazer a Conex�o com o BD
 * @author Filipe Pereira Lara
 */
public class SingleConnection {

	private static String banco = "jdbc:postgresql://localhost:5432/curso-jsp?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	private static Connection connection = null;
	
	/*
	 * Chamada Est�tica do M�todo conectar()
	 */
	static {
		conectar();
	}
	
	/*
	 * Construtor da Classe SingleConnection()
	 * Chama o M�todo conectar()
	 */
	public SingleConnection() {
		conectar();
	}
	
	/*
	 * M�todo conectar()
	 * Prov� os Meios de Conex�o ao BD
	 */
	private static void conectar() {
		try {
			if(connection == null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(banco, user, password);
				connection.setAutoCommit(false);
			}
		} catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Erro ao Conectar com o Banco de Dados");
		}
	}
	
	/*
	 * M�todo getConnection()
	 * Respons�vel Por Fazer Uso da Conex�o na Aplica��o
	 */
	public static Connection getConnection() {
		return connection;
	}
}