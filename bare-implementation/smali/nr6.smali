.class public final Lnr6;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final b:[B

.field public final c:[B


# direct methods
.method public synthetic constructor <init>(I[B[B)V
    .locals 0

    .line 1
    iput p1, p0, Lnr6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lnr6;->b:[B

    .line 4
    .line 5
    iput-object p3, p0, Lnr6;->c:[B

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lzu6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnr6;->b:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    invoke-virtual {p1, v0, v1}, Low0;->i([BI)Low0;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lnr6;->c:[B

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    invoke-virtual {p1, p0, v0}, Low0;->i([BI)Low0;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lnr6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "SMB2FileId{persistentHandle="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lnr6;->b:[B

    .line 19
    .line 20
    invoke-static {p0}, Ll73;->y([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x7d

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
