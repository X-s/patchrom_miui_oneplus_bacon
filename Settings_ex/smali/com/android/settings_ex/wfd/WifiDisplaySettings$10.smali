.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 452
    if-eqz p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-set3(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I

    .line 454
    const-string/jumbo v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get3(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$10;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get4(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap3(Lcom/android/settings_ex/wfd/WifiDisplaySettings;II)V

    .line 450
    :cond_0
    return-void
.end method
