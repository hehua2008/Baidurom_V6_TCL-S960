.class Lcom/android/jrdsettings/JrdPreferenceScreen$2;
.super Ljava/lang/Object;
.source "JrdPreferenceScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/JrdPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdPreferenceScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/jrdsettings/JrdPreferenceScreen$2;->this$0:Lcom/android/jrdsettings/JrdPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/jrdsettings/JrdPreferenceScreen$2;->this$0:Lcom/android/jrdsettings/JrdPreferenceScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/JrdPreferenceScreen;->isClick:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/JrdPreferenceScreen;->access$102(Lcom/android/jrdsettings/JrdPreferenceScreen;Z)Z

    .line 42
    return-void
.end method
