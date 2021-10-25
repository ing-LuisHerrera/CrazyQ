package controllers;

import java.util.List;

import domain.Player;
import repository.CategoryDao;
import repository.ConnectionPostgres;
import repository.DificultyDao;
import repository.GameDao;
import repository.PlayerDao;
import repository.QuestionDao;
import repository.RoundDao;
import services.GameService;
import services.PlayerService;

public class GameController {

	private final ConnectionPostgres con = new ConnectionPostgres();
	//private final CategoryDao catdao = new CategoryDao(con);
	//private final DificultyDao difdao = new DificultyDao(con);
	private final GameDao gamdao = new GameDao(con);
	private final PlayerDao pladao = new PlayerDao(con);
	//private final QuestionDao quedao = new QuestionDao(con);
	private final RoundDao roudao = new RoundDao(con);
	
	private PlayerService plas;
	private GameService gams;
	private 
	
	public GameController() {
		
		plas = new PlayerService(pladao);
		gams = new GameService(gamdao);
				
	}

	/**
	 * Saves the game at the end of it or if is it forced
	 * @param player who played the game
	 * @param AnsweredQuestions questions in order that the player answered
	 * @param totalScore total score that player did in game
	 */
	public void saveGame(String player, List<Object> AnsweredQuestions , long totalScore) {
		//Save player
		plas.savePlayerStats(player, totalScore);
		//Save game
		gams.saveGame(totalScore, player);
		//Save round
		
		
	}
	
	/**
	 * get 5 questions from a category ordered asc by dificulty score
	 * @return list of 5 questions 
	 */
	public List<Object> getQuestions(String dificulty){
		
		return null;
		
	}
	
	
	
	
	
}