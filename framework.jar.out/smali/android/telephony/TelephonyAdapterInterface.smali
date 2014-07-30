.class public Landroid/telephony/TelephonyAdapterInterface;
.super Ljava/lang/Object;
.source "TelephonyAdapterInterface.java"


# static fields
.field private static sInstance:Landroid/telephony/TelephonyAdapterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/telephony/TelephonyAdapterInterface;

    invoke-direct {v0}, Landroid/telephony/TelephonyAdapterInterface;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyAdapterInterface;->sInstance:Landroid/telephony/TelephonyAdapterInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefault()Landroid/telephony/TelephonyAdapterInterface;
    .locals 2

    .prologue
    .line 44
    const-class v0, Landroid/telephony/TelephonyAdapterInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyAdapterInterface;->sInstance:Landroid/telephony/TelephonyAdapterInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 209
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbsPersistentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "/mobile_info/"

    return-object v0
.end method

.method public getSimServiceStateWithDefaultSimId()I
    .locals 7

    .prologue
    .line 151
    const/4 v2, -0x1

    .line 153
    .local v2, state:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyAdapterInterface;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 154
    .local v4, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    .line 155
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    .line 156
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 157
    const-string/jumbo v5, "state"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :cond_0
    move v3, v2

    .line 166
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #state:I
    .end local v4           #telephony:Lcom/android/internal/telephony/ITelephony;
    .local v3, state:I
    :goto_0
    return v3

    .end local v3           #state:I
    .restart local v2       #state:I
    .restart local v4       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    move v3, v2

    .line 161
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0

    .line 163
    .end local v3           #state:I
    .end local v4           #telephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #state:I
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    move v3, v2

    .line 164
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0

    .line 165
    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v3           #state:I
    .restart local v2       #state:I
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    move v3, v2

    .line 166
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0
.end method

.method public getSimServiceStateWithSimId(I)I
    .locals 7
    .parameter "simId"

    .prologue
    .line 120
    const/4 v2, -0x1

    .line 122
    .local v2, state:I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyAdapterInterface;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 123
    .local v4, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    .line 124
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v5, "state"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :cond_0
    move v3, v2

    .line 135
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #state:I
    .end local v4           #telephony:Lcom/android/internal/telephony/ITelephony;
    .local v3, state:I
    :goto_0
    return v3

    .end local v3           #state:I
    .restart local v2       #state:I
    .restart local v4       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    move v3, v2

    .line 130
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0

    .line 132
    .end local v3           #state:I
    .end local v4           #telephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v2       #state:I
    :catch_0
    move-exception v1

    .local v1, ex:Landroid/os/RemoteException;
    move v3, v2

    .line 133
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0

    .line 134
    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v3           #state:I
    .restart local v2       #state:I
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    move v3, v2

    .line 135
    .end local v2           #state:I
    .restart local v3       #state:I
    goto :goto_0
.end method

.method public getSimState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 103
    .local v0, mTelephoneManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    return v1
.end method

.method public getSimStateGemini(ILandroid/content/Context;)I
    .locals 2
    .parameter "simId"
    .parameter "context"

    .prologue
    .line 86
    const-string/jumbo v1, "phone"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 87
    .local v0, mTelephoneManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v1

    return v1
.end method

.method public isDualSimSupport()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, result:Z
    const/4 v0, 0x1

    .line 71
    return v0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "simIndex"

    .prologue
    .line 200
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p6

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/telephony/gemini/GeminiSmsManager;->sendTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 202
    return-void
.end method
