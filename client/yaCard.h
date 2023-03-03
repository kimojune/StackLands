#pragma once

#include "yaCards.h"
#include "yaImage.h"

namespace ya
{
	class Card : public Cards

	{
	public:
		Card();
		~Card();
		virtual void Initialize()override;
		virtual void Update()override;
		virtual void Render(HDC hdc)override;
		virtual void Release()override;

	private:
		std::vector<CardType> mCardType;
	};
}
