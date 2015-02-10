entity pong is
  Port (
      clk_50M : in STD_LOGIC;
      red : out STD_LOGIC;
      green : out STD_LOGIC;
      blue : out STD_LOGIC;
      h_sync : out STD_LOGIC;
      v_sync : out STD_LOGIC;
      player1_up : in STD_LOGIC;
      player1_down : in STD_LOGIC;
      player2_up : in STD_LOGIC;
      player2_down : in STD_LOGIC;
      enable_ball2 : in STD_LOGIC;
      enable_fast : in STD_LOGIC;
      seven_segment : out STD_LOGIC_VECTOR(6 downto 0)
      );

end pong;
