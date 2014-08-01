.class Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/jrdsettings/KeyguardAppWidgetPickActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 620
    return-void
.end method
