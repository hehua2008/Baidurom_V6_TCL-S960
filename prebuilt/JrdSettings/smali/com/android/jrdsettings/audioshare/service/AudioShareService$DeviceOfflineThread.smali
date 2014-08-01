.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;
.super Ljava/lang/Thread;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceOfflineThread"
.end annotation


# instance fields
.field private mRetryCnt:I

.field private mTimeOut:I

.field private mUdn:Ljava/lang/String;

.field private mUdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "udn"

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    .line 1122
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mRetryCnt:I

    .line 1124
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mTimeOut:I

    .line 1125
    return-void
.end method

.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "udn"
    .parameter "retryCnt"
    .parameter "timeOut"

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    .line 1130
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    iput p3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mRetryCnt:I

    .line 1132
    iput p4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mTimeOut:I

    .line 1133
    return-void
.end method

.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1135
    .local p2, udns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1137
    if-eqz p2, :cond_0

    .line 1138
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    .line 1142
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mRetryCnt:I

    .line 1143
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mTimeOut:I

    .line 1144
    return-void

    .line 1140
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/util/ArrayList;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "retryCnt"
    .parameter "timeOut"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1146
    .local p2, udns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1147
    if-eqz p2, :cond_0

    .line 1148
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    .line 1152
    :goto_0
    iput p3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mRetryCnt:I

    .line 1153
    iput p4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mTimeOut:I

    .line 1154
    return-void

    .line 1150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceOfflineThread: mUdns = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRetryCnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mRetryCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mTimeOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mUdns:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mRetryCnt:I

    iget v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceOfflineThread;->mTimeOut:I

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->removeOfflineDevices(Ljava/util/ArrayList;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/util/ArrayList;II)V

    .line 1162
    return-void
.end method
