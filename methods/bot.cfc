/**
* Bot component to interact with Slack bot methods
*/
component accessors="true" extends="base" {

	property name="clientID" 			type="string";
	property name="clientSecret" 		type="string";
	property name="verificationToken"	type="string";
	property name="accessToken"			type="string";
	property name="botAccessToken"		type="string";
	property name="baseURL"				type="string";


	/**
	* Init constructor
	* @clientID the client id
	* @clientSecret the client secret
	* @verificationToken The verification token
	* @accessToken the access token
	* @botAccessToken the bot access token
	* @baseURL the base URL for the requests
	*/
	public function init(
		string clientID,
		string clientSecret,
		string verificationToken,
		string accessToken,
		string botAccessToken,
		string baseURL
	){
		setClientID( arguments.clientID );
		setClientSecret( arguments.clientSecret );
		setVerificationToken( arguments.verificationToken );
		setAccessToken( arguments.accessToken );
		setBotAccessToken( arguments.botAccessToken );
		setBaseURL( arguments.baseURL );
		return this;
	}

	/**
	* Gets information about a bot user.
	* @bot Bot user to get info on
	*/
	public function getBotInfo(
		string bot = '',
		boolean deserialize = false
	){
		return makeRequest(
			url         = 'bots.info',
			params      = arguments,
			deserialize = arguments.deserialize
		);
	}

	/**
	* Returns the properties as a struct
	*/
	public struct function getMemento(){
		return super.getMemento();
	}

}
