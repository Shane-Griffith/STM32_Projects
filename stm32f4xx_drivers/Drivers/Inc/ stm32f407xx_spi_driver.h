//@Baud_Rate
#define RATE_2 			(0)
#define	RATE_4			(1)
#define RATE_8 			(2)
#define RATE_16			(3)
#define RATE_32			(4)
#define RATE_64     	(5)
#define RATE_128		(6)
#define RATE_256		(7)

//@CPHA
#define LEADING_EDGE 	(0)
#define TRAILING_EDGE	(1)

//@CPOL
#define IDLE_HIGH		(1)
#define IDLE_LOW		(0)

//@Master_slave_select
#define MASTER_SELECT	(1)
#define SLAVE_SELECT	(0)

//Spi CLK Enable Macros



//@FRAME_FORMAT_SELECT
uint8_t EIGHT_BIT 		(0)
uint8_t SIXTEEN_BIT		(1)

//doing this to stop whatever is going on down below

typedef struct {

uint8_t BusConfig;				//0x1
uint8_t SPI_EN;					//0x1
uint8_t SPI_SPEED;				//@Baud_Rate
uint8_t	SPI_CPHA;					//@CPHA
uint8_t SPI_CPOL;					//@CPOL
uint8_t SPI_DEVICEMODE;			//@Master_slave_select
uint8_t	SPI_DATA_FORMAT;			//@Frame_FORMAT_SELECT


} SPI_Config_t;


typedef struct{

	SPI_Configuration_t Spi_Config;
	SPI_RegDef_t 		*pSPIx;


}SPI_Handle_t;


void SPI_PeriClockControl(SPI_Handle_t *pSPIx, uint8_t enordi);
