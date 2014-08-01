.class public Lcom/google/api/client/googleapis/GoogleHeaders;
.super Lcom/google/api/client/http/HttpHeaders;
.source "GoogleHeaders.java"


# static fields
.field public static final SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;


# instance fields
.field private gdataClient:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-GData-Client"
    .end annotation
.end field

.field private gdataKey:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-GData-Key"
    .end annotation
.end field

.field public gdataVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "GData-Version"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private methodOverride:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-HTTP-Method-Override"
    .end annotation
.end field

.field private slug:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Slug"
    .end annotation
.end field

.field private uploadContentLength:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-Upload-Content-Length"
    .end annotation
.end field

.field private uploadContentType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "X-Upload-Content-Type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, " !\"#$&\'()*+,-./:;<=>?@[\\]^_`{|}~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/googleapis/GoogleHeaders;->SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    return-void
.end method

.method public static getGoogleLoginValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "authToken"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleLogin auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getGDataClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataClient:Ljava/lang/String;

    return-object v0
.end method

.method public final getGDataKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getGDataVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethodOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->methodOverride:Ljava/lang/String;

    return-object v0
.end method

.method public final getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadContentLength()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->uploadContentLength:J

    return-wide v0
.end method

.method public final getUploadContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->uploadContentType:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationName"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setDeveloperId(Ljava/lang/String;)V
    .locals 2
    .parameter "developerId"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataKey:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public final setGDataClient(Ljava/lang/String;)V
    .locals 0
    .parameter "gdataClient"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataClient:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public final setGDataKey(Ljava/lang/String;)V
    .locals 0
    .parameter "gdataKey"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataKey:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public final setGDataVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "gdataVersion"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataVersion:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setGoogleLogin(Ljava/lang/String;)V
    .locals 1
    .parameter "authToken"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/google/api/client/googleapis/GoogleHeaders;->getGoogleLoginValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public final setMethodOverride(Ljava/lang/String;)V
    .locals 0
    .parameter "methodOverride"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->methodOverride:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public final setSlug(Ljava/lang/String;)V
    .locals 0
    .parameter "slug"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->slug:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setSlugFromFileName(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 84
    sget-object v0, Lcom/google/api/client/googleapis/GoogleHeaders;->SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->slug:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final setUploadContentLength(J)V
    .locals 0
    .parameter "uploadContentLength"

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->uploadContentLength:J

    .line 123
    return-void
.end method

.method public final setUploadContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "uploadContentType"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/api/client/googleapis/GoogleHeaders;->uploadContentType:Ljava/lang/String;

    .line 141
    return-void
.end method
