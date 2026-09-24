.class Lcom/jcraft/jsch/OpenSshCertificate$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/OpenSshCertificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:[B

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/util/ArrayList;

.field public g:J

.field public h:J

.field public i:Ljava/util/LinkedHashMap;

.field public j:[B

.field public k:[B

.field public l:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->g:J

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/jcraft/jsch/OpenSshCertificate$Builder;->h:J

    .line 11
    .line 12
    return-void
.end method
