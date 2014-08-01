.class public Lcom/google/api/client/googleapis/GoogleUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "GoogleUrl.java"


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private prettyprint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "prettyPrint"
    .end annotation
.end field

.field private userip:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "userIp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/api/client/http/GenericUrl;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedUrl"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/googleapis/GoogleUrl;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/GoogleUrl;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/GoogleUrl;->clone()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/GoogleUrl;->clone()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

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
    .line 37
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/GoogleUrl;->clone()Lcom/google/api/client/googleapis/GoogleUrl;

    move-result-object v0

    return-object v0
.end method

.method public final getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleUrl;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public final getFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleUrl;->fields:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleUrl;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyPrint()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleUrl;->prettyprint:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUserIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleUrl;->userip:Ljava/lang/String;

    return-object v0
.end method

.method public final setAlt(Ljava/lang/String;)V
    .locals 0
    .parameter "alt"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleUrl;->alt:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final setFields(Ljava/lang/String;)V
    .locals 0
    .parameter "fields"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleUrl;->fields:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleUrl;->key:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "prettyPrint"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleUrl;->prettyprint:Ljava/lang/Boolean;

    .line 97
    return-void
.end method

.method public final setUserIp(Ljava/lang/String;)V
    .locals 0
    .parameter "userip"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleUrl;->userip:Ljava/lang/String;

    .line 175
    return-void
.end method
