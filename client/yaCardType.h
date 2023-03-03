#pragma once

#include "yaCard.h"
#include "yaImage.h"
#include "yaEnums.h"

namespace ya
{
	class CardType : public Card
	{
	public:
		CardType(eCardType type);
		~CardType();
		virtual void Initialize()override;
		virtual void Update()override;
		virtual void Render(HDC hdc)override;
		virtual void Release()override;

	private:
		CardType* mType;
		Image* mImage;
	};
}
