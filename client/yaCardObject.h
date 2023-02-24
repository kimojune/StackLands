#pragma once
#include "yaEntity.h"

namespace ya
{
	class CardObject : public Entity
	{
	public :
		CardObject(eCardObject Object);
		~CardObject();
		virtual void Initialize();
		virtual void Update();
		virtual void Render(HDC hdc);
		virtual void Release();

		eCardObject GetObj() { return mObj; }

	private:
		const eCardObject mObj;
	};
}
