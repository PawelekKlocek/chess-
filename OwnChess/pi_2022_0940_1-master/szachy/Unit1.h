// ---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
// ---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Grids.hpp>

// ---------------------------------------------------------------------------
class TSzachy : public TForm {
__published: // IDE-managed Components
	TStringGrid *szachownica;
	TButton *Zamknij;

	void __fastcall ustawParametry(TObject *Sender);
	void __fastcall rysowaniePol(TObject *Sender, int ACol, int ARow,
		TRect &Rect, TGridDrawState State);
	void __fastcall naKlikniecie(TObject *Sender, int ACol, int ARow,
		bool &CanSelect);

	void __fastcall startoweUstawienie(TStringGrid& tabelka);
	void __fastcall ZamknijClick(TObject *Sender);

private: // User declarations
	struct pionki {
		int col, row, gracz;
		UnicodeString nazwa;
	};

	pionki tab[8][8];
	// tablica z rozmieszczeniem oraz oznaczeniem czyje s� pionkoi na planszy

	int lastCol = 4;
	int lastRow = 4;
	int czyjaTura = 1;

public: // User declarations
	__fastcall TSzachy(TComponent* Owner);
};

// ---------------------------------------------------------------------------
extern PACKAGE TSzachy *Szachy;
// ---------------------------------------------------------------------------
#endif
