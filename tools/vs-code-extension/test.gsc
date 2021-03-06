
/* test enum */

table struct TabTest_1
{
    bool _bool = true;  //< 测试bool
    byte _byte = 1;     //< 测试byte
    int _int = 1;       //< 测试int
    long _long = 1;     //< 测试long
    float _float = 1;       //< 测试float
    double _double = 1;     //< 测试double
    string _string = "string";      //< 测试string
}

const int g_1 = 1;
const float f_1 = 2;
const string s_1 = "xuantao";
const bool b_1 = true;

#include "base.gcf"
#include <stromg.gcf>

enum Enum1 {
    a,
    b = a,
};

namespace Detail {


enum Enum2


{
    c = 100,
    d,
};

}

//< ssssss
struct Struct0
{
 int s0a[];
 int s0b[10];
 int s0c[10];

 struct Innser
 {
 int a;
 int b;
 }
}

struct Struct1 : Struct0
{
 int s1a = 1;
 float f1;
 string str2 = s_1;
 string str3 = "zouhui";
 Struct0 s1;
 Struct0 s2[1];
 Struct0 s3[2];
 Detail.Enum2 s1arEnum[];
 Detail.Enum2 s1arEnum2[2];
}

struct Struct2
{
 const int MAX=100;

 //@ 这个是描述
 int a = 1;
 int b = Detail.Enum2.c;
 int c;
 int d;
 string s = s_1;
 Struct1 s1;
 Struct1 s2[1];
 Struct1 s3[2];
}

    struct Inner
    {
        int ii;
        string name="inner";
    }
    
const int MAX_TALENT_COUNT              = 128;
const int MAX_SKILL_COUNT               = 16;
const int MAX_MOUNT_SLOT_COUNT          = 3;
const int MAX_PLAYER_DATA_SHELL_COUNT   = 3;
const int MAX_EQUIPMENT_COUNT           = 12;

struct SkillLevel
{
    long m_nSkillID;
    int m_nSkillLevel;
}

struct KGSkillData
{
    SkillLevel m_SkillInfo[MAX_SKILL_COUNT];
};

struct KGTalentData
{
    int m_nTalent[MAX_TALENT_COUNT];
};

struct KGEquipmentItemData
{
    int m_nTypeID;
    int m_nQualityLevel;
    int m_nNeedPlayerLevel;
    int m_MountAttrIds[MAX_MOUNT_SLOT_COUNT];
    int m_nRandSeed;
};

struct KGEquipmentSlotData
{
    int m_nLevel;
    int m_MountItemTypeIds[MAX_MOUNT_SLOT_COUNT];
};

struct KGEquipmentData
{
    KGEquipmentItemData m_EquipmentItemData[MAX_EQUIPMENT_COUNT];
    KGEquipmentSlotData m_EquipmentSlotData[MAX_EQUIPMENT_COUNT];
};

struct KGPlayerData
{
    int m_nForceID;
    int m_nStar;
    int m_nQuality;
    int m_nLevel;
    int m_nExteriorID;
    int m_nWeaponRepresentID;

    KGSkillData     m_SkillData;
    KGTalentData    m_TalentData;
    KGEquipmentData m_EquipmentData;
};

struct Msg
{
    const string NAME = "MSG";
    struct Inner{
        int idx = 101;
        string name = NAME;
    }

    bool _bool = true;
    byte _byte = 1;
    int _int = 2;
    long _long = 3;
    float _float = 4.0;
    double _double = 5.0f;
    string _string = "msg";

    int _int_ary[];
    int _int_ary_2[2];

    Inner _inner;
    Inner _inner_ary[];
    Inner _inner_ary_2[2];
}

cross Caller {
    void Call_A(int a, int b);
    int Call_B(string str)
}


cross TestC2S
{
    bool Test(bool v);
    byte Test(byte v);
    int Test(int v);
    long Test(long v);
    float Test(float v);
    double Test(double v);
    string Test(string v);

    void Test(bool v[]);
    void Test(byte v[2]);
    void Test(int v[][]);
    void Test(long v[2][]);
    void Test(float v[][2]);

    void Test();

    void Test(Msg msg);
    void Test(Msg msg[2]);
    Msg Test(int a, int b);
    Msg[] Test(int a, int b, int c);
    Msg[2] Test(int a, int b, int c, int d);

    KGPlayerData GetPlayerData();
    void SetPlayerData(KGPlayerData data);
    KGPlayerData TranslatePlayerData(KGPlayerData data);
}

cross TestS2C
{
    bool Test(bool v);
    byte Test(byte v);
    int Test(int v);
    long Test(long v);
    float Test(float v);
    double Test(double v);
    string Test(string v);

    void Test(bool v[]);
    void Test(bool v[2]);
    void Test(byte v[2]);
    void Test(int v[][]);
    void Test(long v[2][]);
    void Test(float v[][2]);

    void Test();

    void Test(Msg msg);
    void Test(Msg msg[2]);
    Msg Test(int a, int b);
    Msg[] Test(int a, int b, int c);
    Msg[2] Test(int a, int b, int c, int d);

    KGPlayerData GetPlayerData();
    void SetPlayerData(KGPlayerData data);
    KGPlayerData TranslatePlayerData(KGPlayerData data);
}
