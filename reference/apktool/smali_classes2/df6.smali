.class public final Ldf6;
.super Lbf6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldf6;->m:Ljava/io/OutputStream;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lbf6;->h:J

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lbf6;->i:I

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-byte p1, p0, Lbf6;->k:B

    .line 15
    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    iput-wide v0, p0, Lbf6;->j:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final X(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Ldf6;->m:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
