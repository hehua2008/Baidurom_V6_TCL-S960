.class Lcom/android/jrdsettings/RadioInfo$11;
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
    .line 895
    iput-object p1, p0, Lcom/android/jrdsettings/RadioInfo$11;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 897
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 898
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$11;->this$0:Lcom/android/jrdsettings/RadioInfo;

    const-class v2, Lcom/android/jrdsettings/BandMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 899
    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$11;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 900
    const/4 v1, 0x1

    return v1
.end method
