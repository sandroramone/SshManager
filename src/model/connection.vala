namespace SshManager.Model {
    /**
     * Class represents a ssh connection
     */
    public class Connection {
	    public string url { get; set; }
	    public string password { get; set; }
	    public string name { get; set; }
	    public int id { get; set; }

	    /*
	     * Class represents a ssh connection
	     */
	    public Connection () {}

       	/**
	     * Class represents a ssh connection
	     *
	     * @param name name for connection
	     * @param url address connection
	     * @param password password for connection
	     *
	     * @return Connection
	     */
       	public Connection.create (string name, string url, string password) {
       		this.name = name;
       		this.url = url;
       		this.password = password;
       	}

       	public Connection.list (int id,string name, string url, string password) {
       		this.id = id;
       		this.name = name;
       		this.url = url;
       		this.password = password;
       	}

       	/*public get_connection(int id){

      	}*/
    }
}
