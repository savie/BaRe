.class public final synthetic Laj5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/settings/h;

.field public final synthetic b:Lmt3;


# direct methods
.method public synthetic constructor <init>(Lmt3;Lorg/swiftapps/swiftbackup/settings/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Laj5;->a:Lorg/swiftapps/swiftbackup/settings/h;

    .line 5
    .line 6
    iput-object p1, p0, Laj5;->b:Lmt3;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Laj5;->a:Lorg/swiftapps/swiftbackup/settings/h;

    .line 5
    .line 6
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/settings/h;->a:Lcj5;

    .line 7
    .line 8
    iget-object v0, p1, Lcj5;->e:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne p2, v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcj5;->f:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne p2, v0, :cond_1

    .line 26
    .line 27
    sget-object p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->DataChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p1, Lcj5;->d:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p2, p1, :cond_2

    .line 37
    .line 38
    sget-object p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkOrDataChanges:Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 39
    .line 40
    :goto_0
    iget-object p0, p0, Laj5;->b:Lmt3;

    .line 41
    .line 42
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    new-instance p0, Lio5;

    .line 47
    .line 48
    const-string p1, "RadioButton id not implemented to identify the NewBackupCondition!"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method
