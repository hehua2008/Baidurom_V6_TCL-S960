.class public Lcom/android/server/CTAManagerService;
.super Landroid/os/ICTAManager$Stub;
.source "CTAManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CTAManagerService$AThread;,
        Lcom/android/server/CTAManagerService$CheckWorker;
    }
.end annotation


# static fields
.field public static final API:Ljava/lang/String; = "api"

.field public static final APISTRID:Ljava/lang/String; = "apistringid"

.field static final CHECKFALSE:Ljava/lang/String; = "FALSE"

.field static final CHECKTRUE:Ljava/lang/String; = "TRUE"

.field public static final CTAURI:Landroid/net/Uri; = null

.field public static final IS_ALWAY_ALLOWED:Ljava/lang/String; = "isalwayallowed"

.field private static final MSGDIALOG:I = 0x1

.field private static final MSGTOAST:I = 0x0

.field public static final NOTE:Ljava/lang/String; = "note"

.field private static ResultHmap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CTAMANAGERSERVICE"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UIDNAME:Ljava/lang/String; = "uidname"

.field static final UNCHECK:Ljava/lang/String; = "UNCECK"


# instance fields
.field private mApiNameId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAt:Lcom/android/server/CTAManagerService$AThread;

.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.tcl.cta/cta"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/CTAManagerService;->CTAURI:Landroid/net/Uri;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/ICTAManager$Stub;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    .line 205
    iput-object p1, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    .line 206
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CTAManagerService;->mResolver:Landroid/content/ContentResolver;

    .line 207
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CTAManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 208
    new-instance v0, Lcom/android/server/CTAManagerService$AThread;

    invoke-direct {v0, p1}, Lcom/android/server/CTAManagerService$AThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CTAManagerService;->mAt:Lcom/android/server/CTAManagerService$AThread;

    .line 209
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mAt:Lcom/android/server/CTAManagerService$AThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    invoke-direct {p0}, Lcom/android/server/CTAManagerService;->buildNameMap()V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CTAManagerService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/CTAManagerService;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/CTAManagerService;->addToDataBase(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    return-object v0
.end method

.method private addToDataBase(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "uid"
    .parameter "api"
    .parameter "uidName"
    .parameter "canDo"

    .prologue
    .line 181
    const-string v1, "CTAMANAGERSERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add to data base is checked, cando is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " api+uid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v1, "api"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "apistringid"

    iget-object v1, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v1, "uidname"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "note"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "isalwayallowed"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 190
    iget-object v1, p0, Lcom/android/server/CTAManagerService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/CTAManagerService;->CTAURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 191
    return-void
.end method

.method private buildNameMap()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "enable wifi"

    const v2, 0x104006e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "enable mobile data"

    const v2, 0x104006f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "enable nfc"

    const v2, 0x1040070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "enable blue tooth"

    const v2, 0x1040071

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "enable gps location"

    const v2, 0x1040072

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "take picture"

    const v2, 0x1040073

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "open camera"

    const v2, 0x1040074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "record video"

    const v2, 0x1040075

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "record sound"

    const v2, 0x1040076

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "call phone"

    const v2, 0x1040077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "read smsmms data"

    const v2, 0x1040078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "write smsmms data"

    const v2, 0x1040079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "delete smsmms data"

    const v2, 0x104007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "send sms"

    const v2, 0x104007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "send mms"

    const v2, 0x104007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "read contacts"

    const v2, 0x104007f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "write contacts"

    const v2, 0x1040080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "upate contacts"

    const v2, 0x1040081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "delete contacts"

    const v2, 0x1040082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "read call log"

    const v2, 0x1040083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "update call log"

    const v2, 0x1040084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "delete call log"

    const v2, 0x1040085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "read sms"

    const v2, 0x104007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    const-string v1, "read mms"

    const v2, 0x104007d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method private checkDataBase(ILjava/lang/String;)I
    .locals 11
    .parameter "uid"
    .parameter "api"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getNameFromUid(I)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, uidName:Ljava/lang/String;
    const/4 v9, 0x2

    .line 85
    .local v9, result:I
    const/4 v7, 0x0

    .line 87
    .local v7, cr:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uidname = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and api = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, queryString:Ljava/lang/String;
    const-string v0, "CTAMANAGERSERVICE"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/CTAManagerService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/CTAManagerService;->CTAURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 90
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "isalwayallowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, allow:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/4 v9, 0x0

    .line 104
    .end local v6           #allow:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .end local v3           #queryString:Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_1
    return v9

    .line 97
    .restart local v3       #queryString:Ljava/lang/String;
    .restart local v6       #allow:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 101
    .end local v3           #queryString:Ljava/lang/String;
    .end local v6           #allow:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 102
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CTAMANAGERSERVICE"

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-eqz v7, :cond_1

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private checkUserChoose(ILjava/lang/String;)I
    .locals 4
    .parameter "uid"
    .parameter "api"

    .prologue
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, key:Ljava/lang/String;
    sget-object v2, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const-string v2, "TRUE"

    sget-object v3, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const/4 v1, 0x1

    .line 79
    .local v1, result:I
    :goto_0
    return v1

    .line 73
    .end local v1           #result:I
    :cond_0
    const-string v2, "FALSE"

    sget-object v3, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/4 v1, 0x0

    .restart local v1       #result:I
    goto :goto_0

    .line 76
    .end local v1           #result:I
    :cond_1
    const/4 v1, 0x2

    .restart local v1       #result:I
    goto :goto_0

    .line 78
    .end local v1           #result:I
    :cond_2
    const/4 v1, 0x2

    .restart local v1       #result:I
    goto :goto_0
.end method

.method private clearDataBase()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method private clearDataBase(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uid"
    .parameter "api"
    .parameter "name"

    .prologue
    .line 199
    return-void
.end method

.method private getApiName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "api"

    .prologue
    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/CTAManagerService;->mApiNameId:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 286
    .end local v1           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CTAMANAGERSERVICE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get api name err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object v1, p1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 9
    .parameter "uid"

    .prologue
    .line 321
    const-string v3, "Current app"

    .line 322
    .local v3, name:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, names:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 325
    .local v4, name_i:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/CTAManagerService;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/server/CTAManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #name_i:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .restart local v4       #name_i:Ljava/lang/String;
    move-object v3, v4

    .line 333
    .end local v4           #name_i:Ljava/lang/String;
    :cond_0
    return-object v3

    .line 329
    :catch_0
    move-exception v6

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNameFromUid(I)Ljava/lang/String;
    .locals 7
    .parameter "uid"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, names:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 170
    .local v3, name:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/CTAManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v3           #name:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 173
    .restart local v3       #name:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    const-string v3, "no find package name"

    goto :goto_1
.end method

.method private getPackagesForUid(I)[Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    :try_start_0
    iget-object v2, p0, Lcom/android/server/CTAManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    .local v1, strings:[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 160
    new-array v1, v4, [Ljava/lang/String;

    .end local v1           #strings:[Ljava/lang/String;
    const-string v2, "nofound"

    aput-object v2, v1, v3

    .line 161
    .restart local v1       #strings:[Ljava/lang/String;
    const-string v2, "CTAMANAGERSERVICE"

    const-string v3, "getpackage err no found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-object v1

    .line 156
    .end local v1           #strings:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    .restart local v1       #strings:[Ljava/lang/String;
    goto :goto_0
.end method

.method private ifNotNeedCheck(IZ)Z
    .locals 12
    .parameter "uid"
    .parameter "bypassSystem"

    .prologue
    const/4 v8, 0x1

    .line 112
    iget-object v9, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110059

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 114
    const-string v9, "CTAMANAGERSERVICE"

    const-string v10, "plf disable cta check"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 139
    :cond_0
    :goto_0
    return v7

    .line 118
    :cond_1
    const/4 v7, 0x0

    .line 119
    .local v7, result:Z
    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, packageNames:[Ljava/lang/String;
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 122
    .local v5, name:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/CTAManagerService;->isCTSTest(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 123
    const/4 v7, 0x1

    .line 124
    goto :goto_0

    .line 127
    :cond_2
    if-eqz p2, :cond_3

    .line 129
    :try_start_0
    iget-object v9, p0, Lcom/android/server/CTAManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 130
    .local v0, appinfo:Landroid/content/pm/ApplicationInfo;
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_3

    .line 131
    const/4 v7, 0x1

    goto :goto_0

    .line 134
    .end local v0           #appinfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "CTAMANAGERSERVICE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check 3rd app"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isCTSTest(Ljava/lang/String;)Z
    .locals 4
    .parameter "packagename"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, result:Z
    const-string v1, "com.android.cts"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "CTAMANAGERSERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CTA have bypass the cts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x1

    .line 149
    :cond_0
    return v0
.end method


# virtual methods
.method public CheckAgain(ILjava/lang/String;)I
    .locals 4
    .parameter "uid"
    .parameter "api"

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/android/server/CTAManagerService;->checkUserChoose(ILjava/lang/String;)I

    move-result v0

    .line 342
    .local v0, result:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 343
    const-string v1, "CTAMANAGERSERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cta service checkagain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    return v0
.end method

.method public CheckRight(ILjava/lang/String;Ljava/lang/CharSequence;IZ)I
    .locals 10
    .parameter "uid"
    .parameter "api"
    .parameter "note"
    .parameter "dialogKind"
    .parameter "bypassSystem"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 237
    const-string v5, "CTAMANAGERSERVICE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cta service checkRight "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0, p1, p5}, Lcom/android/server/CTAManagerService;->ifNotNeedCheck(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v6

    .line 279
    :cond_0
    :goto_0
    return v3

    .line 243
    :cond_1
    const/4 v3, 0x2

    .line 244
    .local v3, result:I
    if-ne p4, v6, :cond_2

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/CTAManagerService;->checkDataBase(ILjava/lang/String;)I

    move-result v3

    .line 247
    :cond_2
    if-lt v3, v9, :cond_0

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, key:Ljava/lang/String;
    sget-object v5, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "UNCECK"

    sget-object v7, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 253
    :cond_3
    sget-object v5, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    const-string v7, "UNCECK"

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v7, "CTAMANAGERSERVICE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check right show dialog "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v5, Lcom/android/server/CTAManagerService;->ResultHmap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 256
    iget-object v5, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1040086

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, stringformat:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getAppName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-direct {p0, p2}, Lcom/android/server/CTAManagerService;->getApiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 259
    .end local v4           #stringformat:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/server/CTAManagerService;->mAt:Lcom/android/server/CTAManagerService$AThread;

    invoke-virtual {v5}, Lcom/android/server/CTAManagerService$AThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 260
    .local v2, me:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 261
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 262
    .local v0, b:Landroid/os/Bundle;
    const-string v5, "note"

    invoke-virtual {v0, v5, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 263
    const-string v5, "dialogKind"

    invoke-virtual {v0, v5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string v5, "uid"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string v5, "api"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    iget-object v5, p0, Lcom/android/server/CTAManagerService;->mAt:Lcom/android/server/CTAManagerService$AThread;

    invoke-virtual {v5}, Lcom/android/server/CTAManagerService$AThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public toastNotify(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "uid"
    .parameter "api"
    .parameter "note"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    const-string v3, "CTAMANAGERSERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cta ms toast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0, p1, v7}, Lcom/android/server/CTAManagerService;->ifNotNeedCheck(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/android/server/CTAManagerService;->mAt:Lcom/android/server/CTAManagerService$AThread;

    invoke-virtual {v3}, Lcom/android/server/CTAManagerService$AThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 221
    .local v1, me:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, b:Landroid/os/Bundle;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/server/CTAManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040086

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, stringformat:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/CTAManagerService;->getAppName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, p2}, Lcom/android/server/CTAManagerService;->getApiName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 227
    .end local v2           #stringformat:Ljava/lang/String;
    :cond_0
    const-string v3, "note"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 229
    iget-object v3, p0, Lcom/android/server/CTAManagerService;->mAt:Lcom/android/server/CTAManagerService$AThread;

    invoke-virtual {v3}, Lcom/android/server/CTAManagerService$AThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #me:Landroid/os/Message;
    :cond_1
    return-void
.end method
