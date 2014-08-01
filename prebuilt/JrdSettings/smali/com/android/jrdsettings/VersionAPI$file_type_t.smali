.class final enum Lcom/android/jrdsettings/VersionAPI$file_type_t;
.super Ljava/lang/Enum;
.source "VersionAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/VersionAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "file_type_t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/jrdsettings/VersionAPI$file_type_t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum AMSS:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum AMSSHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum APPSBOOT:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum APPSBOOTHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum FILE_TYPE_MAX:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum OEMSBL:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum OEMSBLHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum PARTITION:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum PERSO:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum QCSBL:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum QCSBLHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum SIMLOCK:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum STUDY_PARA:Lcom/android/jrdsettings/VersionAPI$file_type_t;

.field public static final enum TUNING_PARA:Lcom/android/jrdsettings/VersionAPI$file_type_t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "PARTITION"

    invoke-direct {v0, v1, v3}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->PARTITION:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 60
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "QCSBL"

    invoke-direct {v0, v1, v4}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->QCSBL:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 61
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "QCSBLHD"

    invoke-direct {v0, v1, v5}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->QCSBLHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 62
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "OEMSBL"

    invoke-direct {v0, v1, v6}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->OEMSBL:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 63
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "OEMSBLHD"

    invoke-direct {v0, v1, v7}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->OEMSBLHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 64
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "AMSS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->AMSS:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 65
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "AMSSHD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->AMSSHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 66
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "APPSBOOT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->APPSBOOT:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 67
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "APPSBOOTHD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->APPSBOOTHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 68
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "STUDY_PARA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->STUDY_PARA:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 69
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "TUNING_PARA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->TUNING_PARA:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 70
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "PERSO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->PERSO:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 71
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "SIMLOCK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->SIMLOCK:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 72
    new-instance v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    const-string v1, "FILE_TYPE_MAX"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/VersionAPI$file_type_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->FILE_TYPE_MAX:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/jrdsettings/VersionAPI$file_type_t;

    sget-object v1, Lcom/android/jrdsettings/VersionAPI$file_type_t;->PARTITION:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/jrdsettings/VersionAPI$file_type_t;->QCSBL:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/jrdsettings/VersionAPI$file_type_t;->QCSBLHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/jrdsettings/VersionAPI$file_type_t;->OEMSBL:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/jrdsettings/VersionAPI$file_type_t;->OEMSBLHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->AMSS:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->AMSSHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->APPSBOOT:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->APPSBOOTHD:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->STUDY_PARA:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->TUNING_PARA:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->PERSO:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->SIMLOCK:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/jrdsettings/VersionAPI$file_type_t;->FILE_TYPE_MAX:Lcom/android/jrdsettings/VersionAPI$file_type_t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->$VALUES:[Lcom/android/jrdsettings/VersionAPI$file_type_t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/jrdsettings/VersionAPI$file_type_t;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;

    return-object v0
.end method

.method public static values()[Lcom/android/jrdsettings/VersionAPI$file_type_t;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/jrdsettings/VersionAPI$file_type_t;->$VALUES:[Lcom/android/jrdsettings/VersionAPI$file_type_t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/jrdsettings/VersionAPI$file_type_t;

    return-object v0
.end method
