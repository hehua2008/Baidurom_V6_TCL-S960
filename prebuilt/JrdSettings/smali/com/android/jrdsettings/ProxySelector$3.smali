.class Lcom/android/jrdsettings/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ProxySelector;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/jrdsettings/ProxySelector$3;->this$0:Lcom/android/jrdsettings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/jrdsettings/ProxySelector$3;->this$0:Lcom/android/jrdsettings/ProxySelector;

    invoke-virtual {v0}, Lcom/android/jrdsettings/ProxySelector;->populateFields()V

    .line 291
    return-void
.end method
