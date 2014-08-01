.class Lcom/android/jrdsettings/applications/InstalledAppDetails$7;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$7;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$7;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails;

    #calls: Lcom/android/jrdsettings/applications/InstalledAppDetails;->clearWeatherData()V
    invoke-static {v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$2000(Lcom/android/jrdsettings/applications/InstalledAppDetails;)V

    .line 1724
    return-void
.end method
