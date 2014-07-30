.class public Landroid/os/CTAManager;
.super Ljava/lang/Object;
.source "CTAManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CTAManager$1;,
        Landroid/os/CTAManager$WorkThread;
    }
.end annotation


# static fields
.field public static final AUDIO_RECORD:Ljava/lang/String; = "record sound"

.field public static final CALL_PHONE_FEATURE:Ljava/lang/String; = "call phone"

.field public static final CHECKEDNO:I = 0x0

.field public static final CHECKEDOK:I = 0x1

.field public static final CTA_ACTION_DATA_CONNCETION_DENY:Ljava/lang/String; = "cta.android.intent.action.DATA_CONNECTION_DENY"

.field public static final DELETE_CALL_LOG_FEATURE:Ljava/lang/String; = "delete call log"

.field public static final DELETE_CONTACT_FEATURE:Ljava/lang/String; = "delete contacts"

.field public static final DELETE_SMSMMS_FEATURE:Ljava/lang/String; = "delete smsmms data"

.field public static final DIALOGALWAYS:I = 0x1

.field public static final DIALOGNOALWAYS:I = 0x0

.field public static final ENABLE_BLUETOOTH:Ljava/lang/String; = "enable blue tooth"

.field public static final ENABLE_GPS_LOCATION:Ljava/lang/String; = "enable gps location"

.field public static final ENABLE_MOBILE_DATA:Ljava/lang/String; = "enable mobile data"

.field public static final ENABLE_NFC:Ljava/lang/String; = "enable nfc"

.field public static final ENABLE_WIFI:Ljava/lang/String; = "enable wifi"

.field public static final INSERT_CONTACT_FEATURE:Ljava/lang/String; = "write contacts"

.field public static final OPENCAMERA:Ljava/lang/String; = "open camera"

.field public static final READ_CALL_LOG_FEATURE:Ljava/lang/String; = "read call log"

.field public static final READ_CONTACT_FEATURE:Ljava/lang/String; = "read contacts"

.field public static final READ_MMS_FEATURE:Ljava/lang/String; = "read mms"

.field public static final READ_SMSMMS_FEATURE:Ljava/lang/String; = "read smsmms data"

.field public static final READ_SMS_FEATURE:Ljava/lang/String; = "read sms"

.field public static final READ_USER_DATA:Ljava/lang/String; = "read user data"

.field public static final SEND_MMS_FEATURE:Ljava/lang/String; = "send mms"

.field public static final SEND_SMS_FEATURE:Ljava/lang/String; = "send sms"

.field public static final TAKEPICTURE:Ljava/lang/String; = "take picture"

.field public static final UNCHECKED:I = 0x2

.field public static final UPDATE_CALL_LOG_FEATURE:Ljava/lang/String; = "update call log"

.field public static final UPDATE_CONTACT_FEATURE:Ljava/lang/String; = "upate contacts"

.field public static final VIDEO_RECORD:Ljava/lang/String; = "record video"

.field public static final WRITE_SMSMMS_FEATURE:Ljava/lang/String; = "write smsmms data"

.field private static cta:Landroid/os/CTAManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mService:Landroid/os/ICTAManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v1, "CTAManager"

    iput-object v1, p0, Landroid/os/CTAManager;->TAG:Ljava/lang/String;

    .line 67
    const-string v1, "CTAManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0}, Landroid/os/ICTAManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICTAManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CTAManager;->mService:Landroid/os/ICTAManager;

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic access$100()Landroid/os/CTAManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    return-object v0
.end method

.method public static directAsyncCheck(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;I)V
    .locals 8
    .parameter "uid"
    .parameter "api"
    .parameter "trueCallback"
    .parameter "falseCallback"
    .parameter "note"
    .parameter "dialogKind"

    .prologue
    .line 251
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Landroid/os/CTAManager;

    invoke-direct {v0}, Landroid/os/CTAManager;-><init>()V

    sput-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    .line 254
    :cond_0
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    const/4 v7, 0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/os/CTAManager;->AsyncCheck(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;IZ)V

    .line 255
    return-void
.end method

.method public static directAsyncCheckIncludeSystem(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;I)V
    .locals 8
    .parameter "uid"
    .parameter "api"
    .parameter "trueCallback"
    .parameter "falseCallback"
    .parameter "note"
    .parameter "dialogKind"

    .prologue
    .line 272
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/os/CTAManager;

    invoke-direct {v0}, Landroid/os/CTAManager;-><init>()V

    sput-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    .line 275
    :cond_0
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    const/4 v7, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/os/CTAManager;->AsyncCheck(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;IZ)V

    .line 276
    return-void
.end method

.method public static directCheck(ILjava/lang/String;Ljava/lang/CharSequence;I)Z
    .locals 6
    .parameter "uid"
    .parameter "api"
    .parameter "note"
    .parameter "dialogKind"

    .prologue
    .line 163
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/os/CTAManager;

    invoke-direct {v0}, Landroid/os/CTAManager;-><init>()V

    sput-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    .line 166
    :cond_0
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/CTAManager;->Check(ILjava/lang/String;Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public static directCheckIncludeSystem(ILjava/lang/String;Ljava/lang/CharSequence;I)Z
    .locals 6
    .parameter "uid"
    .parameter "api"
    .parameter "note"
    .parameter "dialogKind"

    .prologue
    .line 182
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/os/CTAManager;

    invoke-direct {v0}, Landroid/os/CTAManager;-><init>()V

    sput-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    .line 185
    :cond_0
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/CTAManager;->Check(ILjava/lang/String;Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public static directToast(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "uid"
    .parameter "api"
    .parameter "note"

    .prologue
    .line 216
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/os/CTAManager;

    invoke-direct {v0}, Landroid/os/CTAManager;-><init>()V

    sput-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    .line 219
    :cond_0
    sget-object v0, Landroid/os/CTAManager;->cta:Landroid/os/CTAManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/CTAManager;->toast(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method


# virtual methods
.method public AsyncCheck(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;IZ)V
    .locals 8
    .parameter "uid"
    .parameter "api"
    .parameter "trueCallback"
    .parameter "falseCallback"
    .parameter "note"
    .parameter "dialogKind"
    .parameter "bypassSystem"

    .prologue
    .line 145
    new-instance v0, Landroid/os/CTAManager$WorkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/CTAManager$WorkThread;-><init>(Landroid/os/CTAManager;Landroid/os/CTAManager$1;)V

    .local v0, wh:Landroid/os/CTAManager$WorkThread;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    .line 146
    invoke-virtual/range {v0 .. v7}, Landroid/os/CTAManager$WorkThread;->set(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;IZ)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method public Check(ILjava/lang/String;Ljava/lang/CharSequence;IZ)Z
    .locals 9
    .parameter "uid"
    .parameter "api"
    .parameter "note"
    .parameter "dialogKind"
    .parameter "bypassSystem"

    .prologue
    .line 101
    const/4 v7, 0x2

    .line 103
    .local v7, result:I
    :try_start_0
    iget-object v0, p0, Landroid/os/CTAManager;->mService:Landroid/os/ICTAManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/ICTAManager;->CheckRight(ILjava/lang/String;Ljava/lang/CharSequence;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 104
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    .line 105
    const/4 v8, 0x0

    .line 109
    .local v8, times:I
    :cond_0
    const-wide/16 v0, 0x96

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/os/CTAManager;->mService:Landroid/os/ICTAManager;

    invoke-interface {v0, p1, p2}, Landroid/os/ICTAManager;->CheckAgain(ILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    .line 117
    const/4 v0, 0x2

    if-eq v7, v0, :cond_0

    .line 123
    .end local v8           #times:I
    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-ne v0, v7, :cond_2

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_2
    return v0

    .line 119
    :catch_0
    move-exception v6

    .line 120
    .local v6, e:Ljava/lang/Exception;
    iget-object v0, p0, Landroid/os/CTAManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check err "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 110
    .restart local v8       #times:I
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public toast(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "uid"
    .parameter "api"
    .parameter "note"

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/os/CTAManager;->mService:Landroid/os/ICTAManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ICTAManager;->toastNotify(ILjava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/os/CTAManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toast err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
