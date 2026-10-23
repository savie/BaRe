.class public final Lz73;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr73;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz73;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lz73;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x7

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Low0;)Lt73;
    .locals 4

    .line 1
    iget p0, p0, Lz73;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 9
    .line 10
    .line 11
    new-instance p0, Lk73;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lvw2;->f(Low0;)J

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lvw2;->f(Low0;)J

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    long-to-int v2, v2

    .line 56
    div-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    invoke-virtual {p1, p0, v2}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance p1, Lh73;

    .line 63
    .line 64
    invoke-direct {p1, v0, v1, p0}, Li73;-><init>(JLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object p1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
