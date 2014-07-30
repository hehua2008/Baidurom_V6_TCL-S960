.class public Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;
.super Ljava/lang/Object;
.source "SimCardAuthenticationManagerImpl.java"

# interfaces
.implements Lcom/orange/authentication/simcard/SimCardAuthenticationManager;


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "com.orange.permission.SIMCARD_AUTHENTICATION"

.field private static final TAG:Ljava/lang/String; = "SimCardAuthenticationIManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "orange.simcard.service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    .line 55
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .locals 7
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;,
            Lcom/orange/authentication/simcard/NoSuchAuthenticationException;,
            Lcom/orange/authentication/simcard/SynchronisationFailureException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v4

    .line 199
    .local v4, sc:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    const-string v5, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->isGrantedPermissions(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "permssions denied"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 202
    :cond_1
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "rand or autn is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    :cond_2
    array-length v5, p1

    if-lt v5, v6, :cond_3

    array-length v5, p2

    if-ge v5, v6, :cond_4

    .line 204
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "rand\'s or autn\'s length < 1"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_4
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    if-nez v5, :cond_5

    .line 206
    new-instance v5, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string/jumbo v6, "service not available"

    invoke-direct {v5, v6}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_5
    sget-object v5, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v4, v5, :cond_7

    .line 209
    :cond_6
    new-instance v5, Lcom/orange/authentication/simcard/SimNotReadyException;

    const-string v6, "Sim card is not present or ready."

    invoke-direct {v5, v6}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :cond_7
    sget-object v5, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v4, v5, :cond_8

    sget-object v5, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v4, v5, :cond_8

    sget-object v5, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v4, v5, :cond_9

    .line 212
    :cond_8
    new-instance v5, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;

    const-string v6, "The SIM card don\'t handle AKA anthentication."

    invoke-direct {v5, v6}, Lcom/orange/authentication/simcard/NoSuchAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    :cond_9
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v3, result:Ljava/util/List;
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    invoke-interface {v5, p1, p2, v3}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;->akaAuthentication([B[BLjava/util/List;)Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;

    move-result-object v0

    .line 218
    .local v0, akaAuthen:Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    if-nez v0, :cond_a

    .line 219
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 220
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 221
    .local v2, res:[B
    new-instance v5, Lcom/orange/authentication/simcard/SynchronisationFailureException;

    invoke-direct {v5, v2}, Lcom/orange/authentication/simcard/SynchronisationFailureException;-><init>([B)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0           #akaAuthen:Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .end local v2           #res:[B
    .end local v3           #result:Ljava/util/List;
    :catch_0
    move-exception v1

    .line 228
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "SimCardAuthenticationIManager"

    const-string v6, "akaAuthentication: RemoteException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/4 v0, 0x0

    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_a
    return-object v0

    .line 223
    .restart local v0       #akaAuthen:Lcom/orange/authentication/simcard/AkaAuthenticationResult;
    .restart local v3       #result:Ljava/util/List;
    :cond_b
    :try_start_1
    new-instance v5, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v6, "An internal error occurs!"

    invoke-direct {v5, v6}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    .locals 4

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, t:I
    const-string v2, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->isGrantedPermissions(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "permssions denied"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    invoke-interface {v2}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;->getSimCardType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 92
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    :goto_1
    return-object v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SimCardAuthenticationIManager"

    const-string v3, "getSimCardType: RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v0           #ex:Landroid/os/RemoteException;
    :pswitch_0
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 80
    :pswitch_1
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 82
    :pswitch_2
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 84
    :pswitch_3
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 86
    :pswitch_4
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 88
    :pswitch_5
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 90
    :pswitch_6
    sget-object v2, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    goto :goto_1

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    .locals 5
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/orange/authentication/simcard/ServiceFailureException;,
            Lcom/orange/authentication/simcard/SimNotReadyException;,
            Lcom/orange/authentication/simcard/UserAuthenticationRejectException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v2

    .line 129
    .local v2, sc:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;
    const-string v3, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->isGrantedPermissions(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "permssions denied"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "rand is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_1
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 134
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "rand\'s length < 1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    if-nez v3, :cond_3

    .line 136
    new-instance v3, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string/jumbo v4, "service not available"

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_3
    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    if-ne v2, v3, :cond_5

    .line 139
    :cond_4
    new-instance v3, Lcom/orange/authentication/simcard/SimNotReadyException;

    const-string v4, "SIM card is not present or ready."

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/SimNotReadyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    invoke-interface {v3, p1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;->gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;

    move-result-object v1

    .line 144
    .local v1, gsmAuthen:Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    if-nez v1, :cond_6

    .line 145
    new-instance v3, Lcom/orange/authentication/simcard/ServiceFailureException;

    const-string v4, "An internal error occurs!"

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #gsmAuthen:Lcom/orange/authentication/simcard/GsmAuthenticationResult;
    :catch_0
    move-exception v0

    .line 149
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SimCardAuthenticationIManager"

    const-string v4, "gsmAuthentication: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    const/4 v1, 0x0

    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_6
    return-object v1
.end method

.method public isGrantedPermissions(Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, cp:Z
    :try_start_0
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationManagerImpl;->mService:Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;

    invoke-interface {v2, p1}, Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;->checkPermission(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 245
    :goto_0
    return v0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, ex:Landroid/os/RemoteException;
    const-string v2, "SimCardAuthenticationIManager"

    const-string v3, "getSimCardType: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
