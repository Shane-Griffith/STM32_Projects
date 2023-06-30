//@Baud_Rates
#define RATE_2 		(0)
#define	RATE_4		(1)
#define RATE_8 		(2)
#define RATE_16		(3)
#define RATE_32		(4)
#define RATE_64     (5)
#define RATE_128	(6)
#define RATE_256	(7)



typedef struct{

uint8_t SPI_SSM;  				//0x1
uint8_t SPI_SSI;				//0x1
uint8_t SPI_EN;					//0x1
uint8_t SET_Baud_rate;			//@Baud_Rate

}SPI_Configuration_t;
