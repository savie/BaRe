.class public final Ltm5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lai7;


# static fields
.field public static final b:Ll15;


# instance fields
.field public final a:Landroid/nfc/tech/IsoDep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ltm5;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ltm5;->b:Ll15;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltm5;->a:Landroid/nfc/tech/IsoDep;

    .line 5
    .line 6
    sget-object p0, Ltm5;->b:Ll15;

    .line 7
    .line 8
    const-string p1, "nfc connection opened"

    .line 9
    .line 10
    invoke-interface {p0, p1}, Ll15;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final I([B)[B
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0}, Lx13;->f([BII)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v2, 0x5

    .line 8
    sget-object v3, Ltm5;->b:Ll15;

    .line 9
    .line 10
    const-string v4, "sent: {}"

    .line 11
    .line 12
    invoke-static {v2, v3, v4, v0}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Ltm5;->a:Landroid/nfc/tech/IsoDep;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    array-length p1, p0

    .line 22
    invoke-static {p0, v1, p1}, Lx13;->f([BII)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "received: {}"

    .line 27
    .line 28
    invoke-static {v2, v3, v0, p1}, Lms8;->A(ILl15;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Ltm5;->a:Landroid/nfc/tech/IsoDep;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->close()V

    .line 4
    .line 5
    .line 6
    sget-object p0, Ltm5;->b:Ll15;

    .line 7
    .line 8
    const-string v0, "nfc connection closed"

    .line 9
    .line 10
    invoke-interface {p0, v0}, Ll15;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Ltm5;->a:Landroid/nfc/tech/IsoDep;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->isExtendedLengthApduSupported()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final l()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
