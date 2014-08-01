.class Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$2;
.super Ljava/lang/Object;
.source "KeyguardWidgetOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$2;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$2;->this$0:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 592
    return-void
.end method
