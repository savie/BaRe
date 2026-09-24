.class Lcom/jcraft/jsch/IO;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/io/OutputStream;

.field public c:Ljava/io/OutputStream;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->d:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->e:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->f:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/jcraft/jsch/IO;->d:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/jcraft/jsch/IO;->e:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->b:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/jcraft/jsch/IO;->f:Z

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iput-object v0, p0, Lcom/jcraft/jsch/IO;->c:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    return-void
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c([BII)V
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    add-int/2addr p2, v0

    .line 10
    sub-int/2addr p3, v0

    .line 11
    if-gtz p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const-string p0, "End of IO Stream Read"

    .line 15
    .line 16
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
