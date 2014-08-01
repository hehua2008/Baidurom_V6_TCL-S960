.class public final enum Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
.super Ljava/lang/Enum;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OprtMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_LPM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_MAX:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_NET_TEST_GW:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_NONE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_OFFLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_OFFLINE_AMPS:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_OFFLINE_CDMA:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_PSEUDO_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_PWROFF:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_RESET:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

.field public static final enum SYS_OPRT_MODE_RESET_MODEM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;


# instance fields
.field private last:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_NONE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 47
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_PWROFF"

    invoke-direct {v0, v1, v4}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_PWROFF:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 50
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_FTM"

    invoke-direct {v0, v1, v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 53
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_OFFLINE"

    invoke-direct {v0, v1, v6}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 56
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_OFFLINE_AMPS"

    invoke-direct {v0, v1, v7}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE_AMPS:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 59
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_OFFLINE_CDMA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE_CDMA:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 62
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_ONLINE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 65
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_LPM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_LPM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 68
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_RESET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_RESET:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 71
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_NET_TEST_GW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_NET_TEST_GW:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 76
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 82
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_PSEUDO_ONLINE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_PSEUDO_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 85
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_RESET_MODEM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_RESET_MODEM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 88
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    const-string v1, "SYS_OPRT_MODE_MAX"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_MAX:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    .line 42
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_NONE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_PWROFF:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE_AMPS:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE_CDMA:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_LPM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_RESET:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_NET_TEST_GW:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_OFFLINE_IF_NOT_FTM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_PSEUDO_ONLINE:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_RESET_MODEM:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->SYS_OPRT_MODE_MAX:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->$VALUES:[Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->last:I

    .line 100
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->last:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->last:I

    .line 101
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->last:I

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->value:I

    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->last:I

    .line 95
    iput p3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->value:I

    .line 96
    iput p3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->last:I

    .line 97
    return-void
.end method

.method public static valToString(I)Ljava/lang/String;
    .locals 6
    .parameter "val"

    .prologue
    .line 110
    invoke-static {}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->values()[Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    move-result-object v0

    .local v0, arr$:[Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 111
    .local v3, o:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    invoke-virtual {v3}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->getVal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 112
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SYS_OPRT_MODE_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 114
    .end local v3           #o:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    :goto_1
    return-object v4

    .line 110
    .restart local v3       #o:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v3           #o:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    return-object v0
.end method

.method public static values()[Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->$VALUES:[Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->value:I

    return v0
.end method

.method public print()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " val = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$OprtMode;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
