.class Lcom/android/jrdsettings/ApnSettings$4;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/ApnSettings;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings$4;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$4;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 313
    return-void
.end method
