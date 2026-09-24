.class public final Lj07;
.super Ljava/io/FilterOutputStream;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Li07;

.field public final b:Ll07;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Long;

.field public final e:Lh07;

.field public final f:Lny6;

.field public k:J


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;Li07;Ll07;Ljava/lang/String;Ljava/lang/Long;Lh07;Lny6;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lj07;->a:Li07;

    .line 14
    .line 15
    iput-object p3, p0, Lj07;->b:Ll07;

    .line 16
    .line 17
    iput-object p4, p0, Lj07;->c:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p5, p0, Lj07;->d:Ljava/lang/Long;

    .line 20
    .line 21
    iput-object p6, p0, Lj07;->e:Lh07;

    .line 22
    .line 23
    iput-object p7, p0, Lj07;->f:Lny6;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 12

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj07;->a:Li07;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj07;->b:Ll07;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj07;->f:Lny6;

    invoke-static {v1, v0}, Lx13;->S(Lny6;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 65
    iget-wide v0, p0, Lj07;->k:J

    const-wide/16 v2, 0x1

    add-long v9, v0, v2

    iput-wide v9, p0, Lj07;->k:J

    .line 66
    sget-object v7, Lm07;->Progress:Lm07;

    .line 67
    iget-object v8, p0, Lj07;->c:Ljava/lang/String;

    .line 68
    iget-object v11, p0, Lj07;->d:Ljava/lang/Long;

    .line 69
    iget-object v4, p0, Lj07;->e:Lh07;

    iget-object v5, p0, Lj07;->a:Li07;

    iget-object v6, p0, Lj07;->b:Ll07;

    invoke-static/range {v4 .. v11}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    return-void
.end method

.method public final write([BII)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lj07;->a:Li07;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "/"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lj07;->b:Ll07;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lj07;->f:Lny6;

    .line 29
    .line 30
    invoke-static {v1, v0}, Lx13;->S(Lny6;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    .line 37
    .line 38
    if-lez p3, :cond_0

    .line 39
    .line 40
    iget-wide p1, p0, Lj07;->k:J

    .line 41
    .line 42
    int-to-long v0, p3

    .line 43
    add-long v7, p1, v0

    .line 44
    .line 45
    iput-wide v7, p0, Lj07;->k:J

    .line 46
    .line 47
    sget-object v5, Lm07;->Progress:Lm07;

    .line 48
    .line 49
    iget-object v6, p0, Lj07;->c:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v9, p0, Lj07;->d:Ljava/lang/Long;

    .line 52
    .line 53
    iget-object v2, p0, Lj07;->e:Lh07;

    .line 54
    .line 55
    iget-object v3, p0, Lj07;->a:Li07;

    .line 56
    .line 57
    iget-object v4, p0, Lj07;->b:Ll07;

    .line 58
    .line 59
    invoke-static/range {v2 .. v9}, Lx13;->k(Lh07;Li07;Ll07;Lm07;Ljava/lang/String;JLjava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method
