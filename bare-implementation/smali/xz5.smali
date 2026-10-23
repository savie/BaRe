.class public final Lxz5;
.super Ld80;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lxz5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyj0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyj0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lxz5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    const-string v1, "Cannot create PhoneAuthCredential without either sessionInfo + smsCode or temporary proof + phoneNumber."

    .line 32
    .line 33
    invoke-static {v1, v0}, Lly8;->b(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lxz5;->a:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p2, p0, Lxz5;->b:Ljava/lang/String;

    .line 39
    .line 40
    iput-object p3, p0, Lxz5;->c:Ljava/lang/String;

    .line 41
    .line 42
    iput-boolean p5, p0, Lxz5;->d:Z

    .line 43
    .line 44
    iput-object p4, p0, Lxz5;->e:Ljava/lang/String;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lxz5;

    .line 2
    .line 3
    iget-boolean v5, p0, Lxz5;->d:Z

    .line 4
    .line 5
    iget-object v4, p0, Lxz5;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lxz5;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lxz5;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lxz5;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lxz5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "phone"

    .line 2
    .line 3
    return-object p0
.end method

.method public final q()Ld80;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lxz5;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lxz5;

    .line 6
    .line 7
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Lyc9;->F0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    iget-object v1, p0, Lxz5;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iget-object v1, p0, Lxz5;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lxz5;->c:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {p1, v1, v0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lxz5;->d:Z

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-static {p1, v2, v1}, Lyc9;->D0(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x6

    .line 35
    iget-object p0, p0, Lxz5;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Lyc9;->w0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lyc9;->G0(Landroid/os/Parcel;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
