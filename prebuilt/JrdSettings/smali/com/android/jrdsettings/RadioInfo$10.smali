.class Lcom/android/jrdsettings/RadioInfo$10;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/jrdsettings/RadioInfo$10;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$10;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$1800(Lcom/android/jrdsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 891
    const/4 v0, 0x1

    return v0
.end method
