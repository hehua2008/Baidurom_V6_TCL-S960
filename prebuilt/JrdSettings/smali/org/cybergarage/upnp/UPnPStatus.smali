.class public Lorg/cybergarage/upnp/UPnPStatus;
.super Ljava/lang/Object;
.source "UPnPStatus.java"


# static fields
.field public static final ACTION_FAILED:I = 0x1f5

.field public static final BAD_METADATA:I = 0x2c8

.field public static final BAD_QUERY:I = 0x322

.field public static final CANNOT_PROCESS:I = 0x2d0

.field public static final DESTINATION_DENIED:I = 0x2cf

.field public static final INVALID_ACTION:I = 0x191

.field public static final INVALID_ARGS:I = 0x192

.field public static final INVALID_CURRENT_TAG_VALUE:I = 0x2be

.field public static final INVALID_NEW_TAG_VALUE:I = 0x2bf

.field public static final INVALID_SEARCH:I = 0x2c4

.field public static final INVALID_SORT:I = 0x2c5

.field public static final INVALID_VAR:I = 0x194

.field public static final NO_SUCH_CONTAINER:I = 0x2c6

.field public static final NO_SUCH_DESTINATION_RESOURCE:I = 0x2ce

.field public static final NO_SUCH_FILE_TRANSFER:I = 0x2cd

.field public static final NO_SUCH_OBJECT:I = 0x2bd

.field public static final NO_SUCH_SOURCE_RESOURCE:I = 0x2ca

.field public static final OUT_OF_SYNC:I = 0x193

.field public static final PARAMETER_MISMATCH:I = 0x2c2

.field public static final PRECONDITION_FAILED:I = 0x19c

.field public static final READ_ONLY_TAG:I = 0x2c1

.field public static final REGISTRY_ACCESS:I = 0x321

.field public static final REQUIRED_TAG:I = 0x2c0

.field public static final RESTRICTED_OBJECT:I = 0x2c7

.field public static final RESTRICTED_PARENT_OBJECT:I = 0x2c9

.field public static final SOURCE_RESOURCE_ACCESS_DENIED:I = 0x2cb

.field public static final TRANSFER_BUSY:I = 0x2cc


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 216
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "desc"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 222
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 173
    sparse-switch p0, :sswitch_data_0

    .line 202
    invoke-static {p0}, Lorg/cybergarage/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 174
    :sswitch_0
    const-string v0, "Invalid Action"

    goto :goto_0

    .line 175
    :sswitch_1
    const-string v0, "Invalid Args"

    goto :goto_0

    .line 176
    :sswitch_2
    const-string v0, "Out of Sync"

    goto :goto_0

    .line 177
    :sswitch_3
    const-string v0, "Invalid Var"

    goto :goto_0

    .line 178
    :sswitch_4
    const-string v0, "Precondition Failed"

    goto :goto_0

    .line 179
    :sswitch_5
    const-string v0, "Action Failed"

    goto :goto_0

    .line 181
    :sswitch_6
    const-string v0, "No such object"

    goto :goto_0

    .line 182
    :sswitch_7
    const-string v0, "Invalid CurrentTagValue"

    goto :goto_0

    .line 183
    :sswitch_8
    const-string v0, "Invalid NewTagValue"

    goto :goto_0

    .line 184
    :sswitch_9
    const-string v0, "Required tag"

    goto :goto_0

    .line 185
    :sswitch_a
    const-string v0, "Read only tag"

    goto :goto_0

    .line 186
    :sswitch_b
    const-string v0, "Parameter mismatch"

    goto :goto_0

    .line 187
    :sswitch_c
    const-string v0, "Unsupported or invalid search criteria"

    goto :goto_0

    .line 188
    :sswitch_d
    const-string v0, "Unsupported or invalid sort criteria"

    goto :goto_0

    .line 189
    :sswitch_e
    const-string v0, "No such container"

    goto :goto_0

    .line 190
    :sswitch_f
    const-string v0, "Restricted object"

    goto :goto_0

    .line 191
    :sswitch_10
    const-string v0, "Bad metadata"

    goto :goto_0

    .line 192
    :sswitch_11
    const-string v0, "Restricted parent object"

    goto :goto_0

    .line 193
    :sswitch_12
    const-string v0, "No such source resource"

    goto :goto_0

    .line 194
    :sswitch_13
    const-string v0, "Source resource access denied"

    goto :goto_0

    .line 195
    :sswitch_14
    const-string v0, "Transfer busy"

    goto :goto_0

    .line 196
    :sswitch_15
    const-string v0, "No such file transfer"

    goto :goto_0

    .line 197
    :sswitch_16
    const-string v0, "No such destination resource"

    goto :goto_0

    .line 198
    :sswitch_17
    const-string v0, "Destination resource access denied"

    goto :goto_0

    .line 199
    :sswitch_18
    const-string v0, "Cannot process the request"

    goto :goto_0

    .line 200
    :sswitch_19
    const-string v0, "Cannot access content registry"

    goto :goto_0

    .line 201
    :sswitch_1a
    const-string v0, "Invalid query"

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x19c -> :sswitch_4
        0x1f5 -> :sswitch_5
        0x2bd -> :sswitch_6
        0x2be -> :sswitch_7
        0x2bf -> :sswitch_8
        0x2c0 -> :sswitch_9
        0x2c1 -> :sswitch_a
        0x2c2 -> :sswitch_b
        0x2c4 -> :sswitch_c
        0x2c5 -> :sswitch_d
        0x2c6 -> :sswitch_e
        0x2c7 -> :sswitch_f
        0x2c8 -> :sswitch_10
        0x2c9 -> :sswitch_11
        0x2ca -> :sswitch_12
        0x2cb -> :sswitch_13
        0x2cc -> :sswitch_14
        0x2cd -> :sswitch_15
        0x2ce -> :sswitch_16
        0x2cf -> :sswitch_17
        0x2d0 -> :sswitch_18
        0x321 -> :sswitch_19
        0x322 -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/cybergarage/upnp/UPnPStatus;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/cybergarage/upnp/UPnPStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 230
    iput p1, p0, Lorg/cybergarage/upnp/UPnPStatus;->code:I

    .line 231
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 238
    iput-object p1, p0, Lorg/cybergarage/upnp/UPnPStatus;->description:Ljava/lang/String;

    .line 239
    return-void
.end method
