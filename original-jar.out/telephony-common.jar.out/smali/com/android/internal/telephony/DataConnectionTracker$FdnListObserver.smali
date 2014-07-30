.class Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;
.super Landroid/database/ContentObserver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdnListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 681
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 682
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "into FDN list observer onChange"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mStar99SharpQueryed:Z

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->queryStar99Sharp(Landroid/content/Context;)V

    .line 709
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 685
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 687
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 688
    const-string v1, "content://icc/fdn2"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker$FdnListObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    if-nez v1, :cond_1

    .line 691
    const-string v1, "content://icc/fdn1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 696
    :cond_1
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 701
    return-void
.end method
