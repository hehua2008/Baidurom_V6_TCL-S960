.class public Lcom/android/internal/statusbar/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final initialPid:I

.field public intercepted:I

.field public final notification:Landroid/app/Notification;

.field public final pkg:Ljava/lang/String;

.field public final score:I

.field public final tag:Ljava/lang/String;

.field public final uid:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/android/internal/statusbar/StatusBarNotification$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarNotification$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->intercepted:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->intercepted:I

    .line 91
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 92
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 93
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->setUser(Landroid/os/UserHandle;)V

    .line 94
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;)V
    .locals 9
    .parameter "pkg"
    .parameter "id"
    .parameter "tag"
    .parameter "uid"
    .parameter "initialPid"
    .parameter "score"
    .parameter "notification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .parameter "tag"
    .parameter "uid"
    .parameter "initialPid"
    .parameter "score"
    .parameter "notification"
    .parameter "user"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->intercepted:I

    .line 63
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    if-nez p7, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 68
    iput-object p3, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 69
    iput p4, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    .line 70
    iput p5, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    .line 71
    iput p6, p0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    .line 72
    iput-object p7, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 73
    iput-object p8, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 74
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p8}, Landroid/app/Notification;->setUser(Landroid/os/UserHandle;)V

    .line 75
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 9

    .prologue
    .line 134
    new-instance v0, Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    iget v6, p0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    iget-object v7, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/statusbar/StatusBarNotification;->clone()Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOngoing()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarNotification(pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    :goto_0
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->intercepted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
