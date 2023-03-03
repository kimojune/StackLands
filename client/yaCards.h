#pragma once


#include "yaGameObject.h"
#include "yaEntity.h"
#include ""
namespace ya
{
	class Cards : public GameObject
	{
	public:
		Cards();
		~Cards();
		virtual void Initialize()override ;
		virtual void Update()override;
		virtual void Render(HDC hdc)override;
		virtual void Release()override;

	private:
		static std::map<std::wstring, Card*> mCard;
	};
}
