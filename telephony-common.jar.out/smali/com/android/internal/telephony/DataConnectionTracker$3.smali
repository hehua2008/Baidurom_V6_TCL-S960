.class Lcom/android/internal/telephony/DataConnectionTracker$3;
.super Landroid/content/AsyncQueryHandler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DataConnectionTracker;->queryStar99Sharp(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, haveStar99Sharp:Z
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1147
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, number:Ljava/lang/String;
    const-string v2, "*99#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1149
    const/4 v0, 0x1

    .line 1154
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1155
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haveStar99Sharp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHaveStar99Sharp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v4, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mHaveStar99Sharp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1156
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mHaveStar99Sharp:Z

    if-eq v0, v2, :cond_2

    .line 1157
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v0, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mHaveStar99Sharp:Z

    .line 1158
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker$3;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    #calls: Lcom/android/internal/telephony/DataConnectionTracker;->updateDataConnectState()V
    invoke-static {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->access$000(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 1160
    :cond_2
    return-void
.end method
