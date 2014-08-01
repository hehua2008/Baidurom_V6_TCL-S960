.class public Lcom/mediatek/apn/ApnUtils;
.super Ljava/lang/Object;
.source "ApnUtils.java"


# static fields
.field public static final ACTION_START_OMACP_SERVICE:Ljava/lang/String; = "com.mediatek.apn.action.start.omacpservice"

.field public static final APN_ID_INDEX:I = 0x11

.field public static final APN_INDEX:I = 0x2

.field public static final AUTH_TYPE_INDEX:I = 0xe

.field public static final ID_INDEX:I = 0x0

.field public static final MCC_INDEX:I = 0x9

.field public static final MMSC_INDEX:I = 0x8

.field public static final MMSPORT_INDEX:I = 0xd

.field public static final MMSPROXY_INDEX:I = 0xc

.field public static final MNC_INDEX:I = 0xa

.field public static final NAME_INDEX:I = 0x1

.field public static final NAP_ID_INDEX:I = 0x12

.field public static final NUMERIC_INDEX:I = 0xb

.field public static final NUMERIC_LIST:[Ljava/lang/String; = null

.field public static final PASSWORD_INDEX:I = 0x7

.field public static final PORT_INDEX:I = 0x4

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM3:Ljava/lang/String; = "content://telephony/carriers_sim3/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM4:Ljava/lang/String; = "content://telephony/carriers_sim4/preferapn"

.field public static final PREFERRED_URI_LIST:[Landroid/net/Uri; = null

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROXY_ID_INDEX:I = 0x13

.field public static final PROXY_INDEX:I = 0x3

.field public static final RESTORE_CARRIERS_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/restore"

.field public static final RESTORE_CARRIERS_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/restore"

.field public static final RESTORE_CARRIERS_URI_GEMINI_SIM3:Ljava/lang/String; = "content://telephony/carriers_sim3/restore"

.field public static final RESTORE_CARRIERS_URI_GEMINI_SIM4:Ljava/lang/String; = "content://telephony/carriers_sim4/restore"

.field public static final RESTORE_URI_LIST:[Landroid/net/Uri; = null

.field public static final SERVER_INDEX:I = 0x6

.field public static final SIM_CARD_SINGLE:I = -0x1

.field public static final SIM_CARD_UNDEFINED:I = -0x2

.field public static final SOURCE_TYPE_INDEX:I = 0x10

.field public static final TAG:Ljava/lang/String; = "Settings/ApnUtils"

.field public static final TYPE_INDEX:I = 0xf

.field public static final URI_LIST:[Landroid/net/Uri; = null

.field public static final USER_INDEX:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "apn"

    aput-object v1, v0, v5

    const-string v1, "proxy"

    aput-object v1, v0, v6

    const-string v1, "port"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "omacpid"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "napid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "proxyid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    .line 86
    new-array v0, v7, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/apn/ApnUtils;->URI_LIST:[Landroid/net/Uri;

    .line 93
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "gsm.sim.operator.numeric"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.operator.numeric.2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.operator.numeric.3"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.operator.numeric.4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/apn/ApnUtils;->NUMERIC_LIST:[Ljava/lang/String;

    .line 101
    new-array v0, v7, [Landroid/net/Uri;

    const-string v1, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "content://telephony/carriers_sim3/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "content://telephony/carriers_sim4/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/apn/ApnUtils;->PREFERRED_URI_LIST:[Landroid/net/Uri;

    .line 109
    new-array v0, v7, [Landroid/net/Uri;

    const-string v1, "content://telephony/carriers_sim1/restore"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "content://telephony/carriers_sim2/restore"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "content://telephony/carriers_sim3/restore"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "content://telephony/carriers_sim4/restore"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/apn/ApnUtils;->RESTORE_URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    const-string p0, ""

    .line 121
    .end local p0
    :cond_1
    return-object p0
.end method

.method public static getIMSI(I)Ljava/lang/String;
    .locals 6
    .parameter "slotId"

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, imsi:Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 167
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForImsiGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v3, "Settings/ApnUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const-string v3, "Settings/ApnUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v1, :cond_0

    .line 177
    const-string v1, ""

    .line 179
    :cond_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Settings/ApnUtils"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPnn(I)Ljava/lang/String;
    .locals 6
    .parameter "slotId"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, pnn:Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 187
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isOperatorMvnoForEfPnnGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v3, "Settings/ApnUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pnn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const-string v3, "Settings/ApnUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pnn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-nez v1, :cond_0

    .line 198
    const-string v1, ""

    .line 200
    :cond_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Settings/ApnUtils"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSpn(I)Ljava/lang/String;
    .locals 6
    .parameter "slotId"

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, spn:Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 148
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->getSpNameInEfSpnGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v3, "Settings/ApnUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v1, :cond_0

    .line 157
    const-string v1, ""

    .line 159
    :cond_0
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Settings/ApnUtils"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isMVNO(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, isMVNO:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 131
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->isIccCardProviderAsMvnoGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    .end local v2           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    const-string v3, "Settings/ApnUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMVNO ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Settings/ApnUtils"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
