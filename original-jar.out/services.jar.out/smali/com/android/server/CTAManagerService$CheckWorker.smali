.class Lcom/android/server/CTAManagerService$CheckWorker;
.super Ljava/lang/Object;
.source "CTAManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CTAManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckWorker"
.end annotation


# instance fields
.field private ctas:Lcom/android/server/CTAManagerService;

.field private haveChooseAlways:Z


# direct methods
.method public constructor <init>(Lcom/android/server/CTAManagerService;)V
    .locals 1
    .parameter "cta"

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/CTAManagerService$CheckWorker;->haveChooseAlways:Z

    .line 353
    iput-object p1, p0, Lcom/android/server/CTAManagerService$CheckWorker;->ctas:Lcom/android/server/CTAManagerService;

    .line 354
    return-void
.end method


# virtual methods
.method public doWork(ZILjava/lang/String;)V
    .locals 3
    .parameter "checkok"
    .parameter "uid"
    .parameter "api"

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/server/CTAManagerService$CheckWorker;->haveChooseAlways:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/server/CTAManagerService$CheckWorker;->ctas:Lcom/android/server/CTAManagerService;

    iget-object v1, p0, Lcom/android/server/CTAManagerService$CheckWorker;->ctas:Lcom/android/server/CTAManagerService;

    #calls: Lcom/android/server/CTAManagerService;->getNameFromUid(I)Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/server/CTAManagerService;->access$000(Lcom/android/server/CTAManagerService;I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/CTAManagerService;->addToDataBase(ILjava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, p2, p3, v1, p1}, Lcom/android/server/CTAManagerService;->access$100(Lcom/android/server/CTAManagerService;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 364
    :cond_0
    if-eqz p1, :cond_1

    .line 365
    invoke-static {}, Lcom/android/server/CTAManagerService;->access$200()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {}, Lcom/android/server/CTAManagerService;->access$200()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setChooseAlways(Z)V
    .locals 0
    .parameter "always"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/android/server/CTAManagerService$CheckWorker;->haveChooseAlways:Z

    .line 358
    return-void
.end method
